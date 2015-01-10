.class public Lcom/nbi/common/NBIException;
.super Ljava/lang/Exception;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# static fields
.field public static final INTERNAL_ERROR:I = 0x2328

.field public static final NBI_ERROR_8000:I = 0x1f40

.field public static final NBI_ERROR_8001:I = 0x1f41

.field public static final NBI_ERROR_8002:I = 0x1f42

.field public static final NBI_ERROR_8003:I = 0x1f43

.field public static final NBI_ERROR_8004:I = 0x1f44

.field public static final NBI_ERROR_9002:I = 0x232a

.field public static final NBI_ERROR_9021:I = 0x233d

.field public static final NBI_ERROR_9023:I = 0x233f

.field public static final NBI_ERROR_9024:I = 0x2340

.field public static final NBI_ERROR_9028:I = 0x2344

.field public static final NBI_ERROR_9029:I = 0x2345

.field public static final NBI_ERROR_BAD_PLACE:I = 0x232c

.field public static final NBI_ERROR_INVALID_ALTITUDE:I = 0x2341

.field public static final NBI_ERROR_INVALID_DIRECTIONS:I = 0x232d

.field public static final NBI_ERROR_INVALID_HEADING:I = 0x2342

.field public static final NBI_ERROR_INVALID_INDEX:I = 0x232e

.field public static final NBI_ERROR_INVALID_LOCATION:I = 0x232b

.field public static final NBI_ERROR_INVALID_PARAMETER:I = 0x232f

.field public static final NBI_ERROR_INVALID_PIN_TYPE:I = 0x2330

.field public static final NBI_ERROR_INVALID_POSITION:I = 0x2331

.field public static final NBI_ERROR_INVALID_SPEED:I = 0x2343

.field public static final NBI_ERROR_MAP_NOT_INITIALIZED:I = 0x2333

.field public static final NBI_ERROR_MISSING_IMAGE:I = 0x233c

.field public static final NBI_ERROR_MISSING_TILE_SIZE_PARAMETER:I = 0x234a

.field public static final NBI_ERROR_NO_IMAGE_ALLOWED:I = 0x2334

.field public static final NBI_ERROR_NO_MEMORY:I = 0x233e

.field public static final NBI_ERROR_NO_PINS_FOUND:I = 0x2336

.field public static final NBI_ERROR_NO_PIN_SELECTED:I = 0x2335

.field public static final NBI_ERROR_PINTYPE_CUSTOM_IMAGE:I = 0x2337

.field public static final NBI_ERROR_TRAFFIC_INCIDENTS_UNAVAILABLE:I = 0x2338

.field public static final NBI_ERROR_TRAFFIC_UNAVAILABLE:I = 0x2339

.field public static final NBI_ERROR_UNINITIALIZED_MAP:I = 0x233a

.field public static final NBI_ERROR_UNKNOWN_LANGUAGE_CODE:I = 0x233b

.field public static final NBI_NETWORK_ERROR2000:I = 0x7d0

.field public static final NBI_NETWORK_ERROR2001:I = 0x7d1

.field public static final NBI_NETWORK_ERROR2002:I = 0x7d2

.field public static final NBI_NETWORK_ERROR2003:I = 0x7d3

.field public static final NBI_NETWORK_ERROR2004:I = 0x7d4

.field public static final NBI_NETWORK_NO_REVERSE_GEOCODE:I = 0x7d9

.field public static final NBI_NETWORK_READ_ERROR:I = 0x7d6

.field public static final NBI_NETWORK_WRITE_ERROR:I = 0x7d5

.field public static final NBI_SERVER_ERROR4000:I = 0xfa0

.field public static final NBI_SERVER_ERROR4001:I = 0xfa1

.field public static final NBI_SERVER_ERROR4002:I = 0xfa2

.field public static final NBI_SERVER_ERROR4003:I = 0xfa3

.field public static final NBI_SERVER_ERROR4010:I = 0xfaa

.field public static final NBI_SERVER_ERROR4014:I = 0xfae

.field public static final NBI_SERVER_ERROR4015:I = 0xfaf

.field public static final NBI_SERVER_ERROR4016:I = 0xfb0

.field public static final NBI_SERVER_ERROR4017:I = 0xfb1

.field public static final NBI_SERVER_ERROR4020:I = 0xfb4

.field public static final NBI_SERVER_ERROR4021:I = 0xfb5

.field public static final NBI_SERVER_ERROR4022:I = 0xfb6

.field public static final NBI_SERVER_ERROR4030:I = 0xfbe

.field public static final NBI_SERVER_ERROR4031:I = 0xfbf

.field public static final NBI_SERVER_ERROR_INVALID_API_KEY:I = 0xfc8

.field public static final NBI_SERVER_ERROR_MDN_LIMIT_REACHED:I = 0xfce

.field public static final NBI_SERVER_ERROR_QUERY_LIMIT_REACHED:I = 0xfba

.field public static final NBI_SERVER_FEATURE_NOT_AVAILABLE:I = 0x10b5

.field public static final NBI_SERVER_FEATURE_NOT_SUPPORTED:I = 0x10cb


# instance fields
.field private ic:Lcom/navbuilder/nb/NBException;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    check-cast p1, Lcom/navbuilder/nb/NBException;

    iput-object p1, p0, Lcom/nbi/common/NBIException;->ic:Lcom/navbuilder/nb/NBException;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIException;->ic:Lcom/navbuilder/nb/NBException;

    invoke-virtual {v0}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIException;->ic:Lcom/navbuilder/nb/NBException;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIException;->ic:Lcom/navbuilder/nb/NBException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
