.class public Lcom/nbi/location/LocationException;
.super Ljava/lang/Exception;


# static fields
.field public static final ERROR_SUCCESS:I = 0x0

.field public static final INTERNAL_SERVER_ERROR:I = 0xfa3

.field public static final NBI_ERROR9001:I = 0x2329

.field public static final NBI_ERROR_9002:I = 0x232a

.field public static final NBI_ERROR_GPS_TIMEOUT:I = 0x2347

.field public static final NBI_ERROR_GPS_TURNED_OFF:I = 0x2349

.field public static final NBI_ERROR_LOCATION_SETTING_OFF:I = 0x234b

.field public static final NBI_ERROR_NETWORK_TIMEOUT:I = 0x2348

.field public static final NBI_ERROR_NO_LOCATION_AVAILABLE:I = 0x2346

.field public static final NBI_NETWORK_ERROR2000:I = 0x7d0


# instance fields
.field private sO:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nbi/location/LocationException;->sO:I

    iput p1, p0, Lcom/nbi/location/LocationException;->sO:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/nbi/location/LocationException;->sO:I

    return v0
.end method
