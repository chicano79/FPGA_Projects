/*
 * FILENAME: ip.h
 *
 * Copyright  2000 By InterNiche Technologies Inc. All rights reserved
 *
 * IP protocol definitions
 *
 * MODULE: INET
 *
 *
 * PORTABLE: yes
 */

/* Additional Copyrights: */
/* Portions Copyright 1990, 1993 by NetPort Software.
 * Portions Copyright 1986 by Carnegie Mellon 
 * Portions Copyright 1983 by the Massachusetts Institute of 
 * Technology 
 */

#ifndef _IPHFILE_H_
#define  _IPHFILE_H_ 1

/* For now, include IPv4 if it's not specificly excluded */
#ifndef OMIT_IPV4
#define IP_V4  1
#endif

/* Internet status. Keeps track of packets gone through and errors. 
 * 10/16/90 - scrapped old structure in favor of MIB for SNMP support. 
 * -JB- 
 */
struct IpMib   {
   u_long   ipForwarding;     /* 1= we are a gateway; 2 = host */
   u_long   ipDefaultTTL;     /* IP time to live */
   u_long   ipInReceives;     /* total received datagrams (bad too) */
   u_long   ipInHdrErrors;    /* Header Err (xsum, ver, ttl, etc) */
   u_long   ipInAddrErrors;   /* nonsense IP addresses */
   u_long   ipForwDatagrams;  /* routed packets */
   u_long   ipUnknownProtos;  /* unknown protocol types */
   u_long   ipInDiscards;     /* dropped (ie no buffer space) */
   u_long   ipInDelivers;     /* delivered receive packets */
   u_long   ipOutRequests;    /* sends (not includeing routed) */
   u_long   ipOutDiscards;    /* sends dropped (no buffer) */
   u_long   ipOutNoRoutes;    /* dropped, can't route */
   u_long   ipReasmTimeout;   /* fragment reassembly timeouts */
   u_long   ipReasmReqds;     /* frags received */
   u_long   ipReasmOKs;       /* packets successfully reassembled */
   u_long   ipReasmFails;     /* packets reassemblys failed */
   u_long   ipFragOKs;        /* packets we fragmented for send */
   u_long   ipFragFails;      /* packets we wanted to frag and couldnt */
   u_long   ipFragCreates;    /* fragments we made */
   u_long   ipRoutingDiscards;
};

typedef struct IpMib * IPMIB;
extern   struct IpMib   ip_mib;


/* This ip route structure was generated by the NetPort MIB compiler 
 * from rfc1213. It replaces the old RtMib structure, which was built 
 * by hand 
 */
/* More fields added to the table for RIP. This mechanism of adding 
 * more fields to the same table saves lot of complexity of code. 
 * That is there is only one Routing Table used by IP and RIP. Common 
 * calls to add_route(), del_route, etc. Fields of RTMIB used by RIP 
 * are as follows ipRouteDest; Destination ipRouteIfIndex; Interface 
 * ( 1 based value) of this route ipRouteMetric1; Time To Live for 
 * this route ipRouteNextHop; Gateway thru which we can reach 
 * ipRouteDest ipRouteMask; Subnet Mask New fields for RIP are 
 * ipRouteFlags; Flag is set to have triggered updates 
 * ipRouteProxyRoute As needed by RIP2 ipRouteMainTimer To check for 
 * Time To Live for this route ipRouteSecondaryTimer Extra time for 
 * the entry to live !! ipRouteRouteTag As needed by RIP2 
 * ipRouteDistMetric Distance metric of RIP2 We could have used 
 * ipRouteMetric2, etc. but having a specific field makes code more 
 * readable 
 */

struct RtMib
{
   /* btree code requires the AVL info to be attop of structure so that the
    * same btree code can work on both IPv4 and IPv6 route tables. This must
    * also match struct avl_node.
    */
#ifdef BTREE_ROUTES
   struct avl_node * left;       /* btree brach to higher side of tree */
   struct avl_node * right;      /* btree brach to lower side of tree */
   enum AVLSKEW skew;            /* which branch is longer */
   enum AVLTYPE treetype;        /* type of route v4 or v6 */
#endif   /* BTREE_ROUTES */

   u_long   ipRouteDest;
   long     ipRouteIfIndex;   /* do not use as nets[] index! */
   long     ipRouteMetric1;
   long     ipRouteMetric2;
   long     ipRouteMetric3;
   long     ipRouteMetric4;
   u_long   ipRouteNextHop;
   long     ipRouteType;
   long     ipRouteProto;
   u_long   ipRouteAge;
   u_long   ipRouteMask;
   long     ipRouteMetric5;
   void *   ipRouteInfo;   /* 32 bit ptr */

   /* end of rfc1213 (MIB-2) fields */

#ifdef RIP_SUPPORT
   u_long   ipRouteMainTimer  ;
   /* We keep the route entry for about 120s after the timeout has occured.
    * This is done so that info about this broken route can be passed to
    * other gateways
    */
   u_long   ipRouteSecondaryTimer   ; 
   u_long   ipRouteProxyRoute;/* For   Proxy RIP-2,   0  if none */
   /* Precisely the NextHop field of RIP2 pkt */
   u_short  ipRouteRouteTag;  /* Route tag to send */
   u_long   ipRouteDistMetric;
#endif

   /* flags for this route table entry (see below) */
   int      ipRouteFlags   ; 

   /* pointer to net for route. This is informationally redundant of 
    * the field ipRouteIfIndex above, however it's more pratical now 
    * that we support dynamic interfaces which do not appear in the 
    * static nets[] array. 
    */
   struct net * ifp;

};


/* IP routing logic needs to ignore certain RIP_PRIVATE entries in 
 * the route table, thus some RIP ipRouteFlags defines are set here. 
 * These are also defined in RIP module with ifndefs for RIPp prots 
 * to non-InterNiche IP stacks. 
 */
#define  RIP_PRIVATE    0x01  /* Private route entry */
#define  RIP_TRIGGER    0x02  /* Do triggered update for entry */
#define  RIP_VALID      0x04  /* valid RIP entry  */


typedef struct RtMib * RTMIB;
extern   RTMIB rt_mib;
extern   unsigned ipRoutes;   /* number of entrys alloced */

#ifdef BTREE_ROUTES
/* AVL tree code entry points in rtbtree.c */
enum AVLRES avlinsert(struct avl_node ** parent, struct avl_node * newnode);
enum AVLRES avlremove(struct avl_node **n, void * key);
void avldepthfirst(struct avl_node * n,
   void(*func)(struct avl_node * n, long param, int depth),
      long param, int depth);

/* Define macros/routines to compare two nodes in the AVL tree. */
#ifdef IP_V6
int   AVL_LESS(struct avl_node * a, struct avl_node * b);
int   AVL_GREATER(struct avl_node * a, struct avl_node * b);
int   AVL_KEY_LESS(void * key, struct avl_node * b);
int   AVL_KEY_GREATER(void * key, struct avl_node * b);
#else    /* just IPV4, use fast macros */
#define AVL_LESS(a, b) \
   (htonl(((RTMIB)a)->ipRouteDest) < htonl(((RTMIB)b)->ipRouteDest))
#define AVL_GREATER(a, b) \
   (htonl(((RTMIB)a)->ipRouteDest) > htonl(((RTMIB)b)->ipRouteDest))
#define AVL_KEY_LESS(key, b) \
   ((*(ip_addr*)key) < htonl(((RTMIB)b)->ipRouteDest))
#define AVL_KEY_GREATER(key, b) \
   ((*(ip_addr*)key) > htonl(((RTMIB)b)->ipRouteDest))
#endif   /* IP_V6 */
      
/* the actual access routines are different for IPv4 and IPv6 since
 * they are based on IP address.
 */
#ifdef IP_V4
struct avl_node * avlv4_access(struct avl_node * n, ip_addr key);
#endif   /* IP_V4 */
#ifdef IP_V6
struct avl_node * avlv6_access(struct avl_node * n, ip6_addr * key);
#endif   /* IP_V6 */
#endif   /* BTREE_ROUTES */


extern RTMIB cachedRoute;     /* last route entry used */

extern   queue    bigfreeq;   /* big free buffers */
extern   queue    lilfreeq;   /* small free buffers */


/* values for ipRouteProto; */
#define  IPRP_OTHER     1     /* none of the following */
#define  IPRP_LOCAL     2     /* non-prot source, e.g., manually configured */
#define  IPRP_NETMGMT   3     /* set via SNMP, CMIP, etc */
#define  IPRP_ICMP      4     /* set via ICMP */
#define  IPRP_EGP       5  
#define  IPRP_GGP       6
#define  IPRP_HELLO     7
#define  IPRP_RIP       8  /* set via RIP */
/* there's about 10 more we dont support */

/* values for ipRouteType; */
#define  IPRT_OTHER     1     /* none of the following */
#define  IPRT_INVALID   2     /* invalidated */
#define  IPRT_DIRECT    3     /* directly connected net */
#define  IPRT_INDIRECT  4     /* non-local host/net/subnet */


struct ip   {
   u_char   ip_ver_ihl;    /* 4 bit version, 4 bit hdr len in 32bit words */
   u_char   ip_tos;        /* Type of Service */
   unshort  ip_len;        /* Total packet length including header */
   unshort  ip_id;         /* ID for fragmentation */
   unshort  ip_flgs_foff;  /* mask in flags as needed */
   u_char   ip_time;       /* Time to live (secs) */
   u_char   ip_prot;       /* protocol */
   unshort  ip_chksum;     /* Header checksum */
   ip_addr  ip_src;        /* Source name */
   ip_addr  ip_dest;       /* Destination name */
};


/* Some useful definitions */

#define  IPHSIZ   sizeof(struct  ip)   /* internet header size */
#define  IP_VER   4     /* internet version */
#define  IP_TSRV  0     /* default type of service */
#define  IP_ID    0     /* kernel fills in IN id */
#define  IP_FLGS  0     /* no fragmentation yet */

/* fragmentation flag bits, for masking into 16bit flags/offset word */
#define  IP_FLG_DF   0x4000   /* Don't   Fragment (DF) bit */
#define  IP_FLG_MF   0x2000   /* More Fragments (MF) bit */
#define  IP_FLG_MASK 0xe000   /* for masking out all flags from word */
#define  IP_EXTRACT_FOFF 0x1fff /* mask to allow extraction of fragment offset field in IP header */

#define  IP_FOFF  0      /* " " " */
#ifndef  IP_TTL          /* maximum time to live */
#define  IP_TTL   64     /* overridable from ipport.h_h */
#endif
#define  IP_TOS_DEFVAL 0 /* Routine Precedence, Normal Delay, Normal Throughput, Normal Reliability */ 
#define  IPXSUM   0      /* initial checksum */

/* ethernet-ish packet types in NET endian: */
#define  IP_TYPE     htons(0x0800)
#define  ARP_TYPE    htons(0x0806)

/* Some macros for finding IP offsets in incoming packets */
#define  ip_head(ppkt)     (struct  ip *)(ppkt->nb_prot)

#define  ip_hlen(pip)      (((pip)->ip_ver_ihl  &  0x0f) << 2)
#define  ip_data(pip)      ((char *)(pip) +  ip_hlen(pip))
#define  ip_optlen(pip)    (ip_hlen(pip)  -  20)


/* prototype IP routines */
int      ip_write(u_char prot, PACKET);
int      ip_write2(u_char prot, PACKET p, u_char * optp);
int      ip_rcv(PACKET);      /* low level process of incomming IP */
char *   ip_startup(void);

#ifndef MINI_IP
int      ip_demux(PACKET);    /* demux incoming IP to upper layers */
int      ip_init(void);
ip_addr  ip_mymach(ip_addr);
int      ip_more(void);
NET      iproute(ip_addr, ip_addr*);
RTMIB    add_route(ip_addr dest, ip_addr mask, ip_addr nexthop, int iface, int type);
int      del_route(ip_addr dest, ip_addr mask, int iface);
RTMIB    rt_lookup(ip_addr host);
#endif   /* MINI_IP */

#ifdef IP_FRAGMENTS
int   ip_reassm(PACKET newp);    /* process received IP fragments */
#endif   /* IP_FRAGMENTS */

#ifdef IP_RAW

/* struct ipraw_ep - IP's endpoint for raw IP access
 */
struct ipraw_ep {
   struct ipraw_ep * ipr_next;
   ip_addr ipr_laddr;               /* local host IP address binding */
   ip_addr ipr_faddr;               /* remote host IP address binding 
                                     * (connection) */
   int (*ipr_rcv)(PACKET, void*);   /* incoming packet handler */
   void * ipr_data;                 /* user 'per-connection' token */
   u_char ipr_prot;                 /* IP protocol ID binding */
};

/* ipraw_eps - pointer to list of raw IP endpoints 
 */
extern struct ipraw_ep * ipraw_eps;

/* prototypes for raw IP API functions
 */
struct ipraw_ep * ip_raw_open(u_char prot, ip_addr laddr, ip_addr faddr,
                              int (*handler)(PACKET, void *), void * data);
void ip_raw_close(struct ipraw_ep * ep);
int ip_raw_write(PACKET p);
PACKET ip_raw_alloc(int datalen, int hdrincl);
void ip_raw_free(PACKET p);
int ip_raw_maxalloc(int hdrincl);

#endif /* IP_RAW */

#ifdef IP_V6
int   ip6_init(void);         /* start the IPv6 layer */
int   ip6_rcv(PACKET pkt);    /* receive a v6 pkt */
#endif /* IP_V6 */

#define  IN_MULTICAST(i)   (((long)(i) &  0xf0000000) == 0xe0000000)

#ifdef IP_MULTICAST
/*
 * Internet multicast address structure.  There is one of these for each
 * IP multicast group to which this host belongs on a given network
 * interface.  They are kept in a linked list, rooted in the interface's 
 * NET structure.
 *
 * IPv6 - Structure now contains both types of address. If both are
 * present then either one may be valid, the other should be all zeros.
 */
struct in_multi
{
   unsigned long  inm_addr;      /* IPv4 multicast address */
#ifdef IP_V6
   ip6_addr    ip6addr;          /* IPv6 multicast address */
#endif
     NET   inm_netp;             /* back pointer to NET structure  */
     unsigned inm_refcount;      /* no. membership claims by sockets */
     unsigned inm_timer;         /* IGMP membership report timer */
     u_char last2send_report;    /* were we the last to send report for this multicast group?
                                  * 1 (true) or 0 (false) (used only for IGMPv2) */
     struct in_multi * inm_next; /* ptr   to next  multicast   address */
};

/*
 * Structure stored in mbuf in inpcb.ip_options
 * and passed to ip_output when ip options are in use.
 * The actual length of the options (including ipopt_dst)
 * is in m_len.
 */
#define  MAX_IPOPTLEN   40
#define  IP_MAX_MEMBERSHIPS   20

#define  IM_ALLOC(size)    npalloc(size)
#define  IM_FREE(ptr)      npfree(ptr)
#define  INM_ALLOC(size)   npalloc(size)
#define  INM_FREE(ptr)     npfree(ptr)

/*
 * Defaults and limits for multicast options
 */
#define  IP_DEFAULT_MULTICAST_TTL   1  /* limit m'casts to 1 hop  */
#define  IP_DEFAULT_MULTICAST_LOOP  1  /* hear sends if a member  */
#define  IP_MAX_MEMBERSHIPS         20 /* max memberships */

/*
 * Structure attached to inpcb.ip_moptions and
 * passed to ip_output when IP multicast options are in use.
 */
struct ip_moptions
{
     struct net  *  imo_multicast_netp;/*   netp  for   outgoing multicasts */
     u_char   imo_multicast_ttl;   /* TTL for outgoing multicasts */
     u_char   imo_multicast_loop;  /* 1 => hear sends if a member */
     u_short  imo_num_memberships;/*  no.   memberships this  socket */
     struct in_multi * imo_membership[IP_MAX_MEMBERSHIPS];
};

/*
 * Argument structure for IP_ADD_MEMBERSHIP and IP_DROP_MEMBERSHIP.
 */
struct ip_mreq
{
     ip_addr  imr_multiaddr;/*  IP multicast   address  of group */
     ip_addr  imr_interface;/*  local IP address  of interface */
};

#endif   /* IP_MULTICAST */


/*
 * Socket options for use with [gs]etsockopt at the IP level.
 * First word of comment is data type; bool is stored in int.
 */
#define  IP_OPTIONS        1  /* buf/ip_opts; set/get IP options */
#define  IP_HDRINCL        2  /* int; header is included with data */
#define  IP_TOS            3  /* int; IP type of service and preced. */
#define  IP_TTL_OPT        4  /* int; IP time to live */
#define  IP_RECVOPTS       5  /* bool; receive all IP opts w/dgram */
#define  IP_RECVRETOPTS    6  /* bool; receive IP opts for response */
#define  IP_RECVDSTADDR    7  /* bool; receive IP dst addr w/dgram */
#define  IP_RETOPTS        8  /* ip_opts; set/get IP options */
#define  IP_MULTICAST_IF   9  /* u_char; set/get IP multicast i/f  */
#define  IP_MULTICAST_TTL  10 /* u_char; set/get IP multicast ttl */
#define  IP_MULTICAST_LOOP 11 /* u_char; set/get IP multicast loopback */
#define  IP_ADD_MEMBERSHIP 12 /* ip_mreq; add an IP group membership */
#define  IP_DROP_MEMBERSHIP 13 /* ip_mreq; drop an IP group membership */
#define  IP_SCOPEID        14 /* int; IPv6 IF scope  ID */ 

int   ip2mac(PACKET, ip_addr ipaddr);     /* put IP packet on MAC layer */

#ifdef NPDEBUG
void  ip_dump(PACKET);  /* this needs printf, DEBUG = on */
#endif

int   ip_stats(void * pio);         /* print IP layer stats */
int   ipr_stats(void * pio);        /* print IP reassembly stats */

PACKET ip_copypkt(PACKET p);        /* copy packet into new buffer */

/* IP/TCP checksummer; usually in assembly language somewhere... -JB- */
unsigned short cksum(void*, unsigned);

/* IPv4 broadcast address */
#define INADDR_BROADCAST 0xffffffffL

/* Host endian values for IP address class & subnet manipulation */
#define  AMASK    htonl(0x80000000)
#define  AADDR    htonl(0x00000000)
#define  BMASK    htonl(0xC0000000)
#define  BADDR    htonl(0x80000000)
#define  CMASK    htonl(0xE0000000)
#define  CADDR    htonl(0xC0000000)
#define  IPLBA    htonl(0x7F000000) /* IP LoopBack net Address */


/* ethernet & token ring protocol values in local endian: */
#define     ARPTP    ntohs(0x0806)     /* ARP type */
#define     IPTP     ntohs(0x0800)     /* IP type */

#define     TCPTP    0x06     /* TCP type on IP (8 bit, no swap) */

/*
 * Address families, for socket() call and "domain" variables.
 */

#define  AF_INET     2     /* internetwork: UDP, TCP, etc. */
#define  AF_INET6    3     /* IPv6 */
#define  PF_INET6    AF_INET6

/* If we are using IPSEC then we need to allow space for IPSEC headers,
 * a trailer, and encapsulation.
 */
#ifdef IPSEC
#ifndef IPSECOPT_SIZE   
#define IPSECOPT_SIZE   98
#endif
#else
#undef  IPSECOPT_SIZE
#define IPSECOPT_SIZE   0
#endif /* IPSEC */

/* IP options */

/* mask to determine option identifier */
#define IPOPT_TYPE_MASK 0x1f

/* IP Router Alert option (RFC 2113) */
#define IP_RTR_ALERT_OPT 0x14
#define IP_RTR_ALERT_OPT_DATA 0x94040000
#define IP_RTR_ALERT_OPT_SIZE 0x4
/* identifier for End of Option List option */
#define EOL_OPT 0x0
/* identifier for No Operation option */
#define NOOP_OPT 0x1


/* structure for converting ip_addr to 4 unsigned char values: */
struct l2b  {
   union {
      unsigned long  iplong;
      unsigned char  ipchar[4];
   }ip;
};

/* boolean variable that indicates if the (UDP and TCP) socket library's 
 * events (such as those used by tcp_sleep () and tcp_wakeup ()) map 
 * into operating system primitives such as events, or if they map to 
 * task suspend and task resume mechanisms.
 */
extern u_char so_evtmap;
struct socket; /* forward declaration */
/* function pointers (used only when SOCK_MAP_EVENTS is defined) for 
 * port-specific routines that create and delete events that are used 
 * in the operation of tcp_sleep () and tcp_wakeup ().
 */
extern int (*so_evtmap_create) (struct socket *);
extern int (*so_evtmap_delete) (struct socket *);

#endif   /* _IPHFILE_H_ */



