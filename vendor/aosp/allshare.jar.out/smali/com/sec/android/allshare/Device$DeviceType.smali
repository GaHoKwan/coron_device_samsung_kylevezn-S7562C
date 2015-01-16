.class public final enum Lcom/sec/android/allshare/Device$DeviceType;
.super Ljava/lang/Enum;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/Device$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_AVPLAYER:Lcom/sec/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_FILERECEIVER:Lcom/sec/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_IMAGEVIEWER:Lcom/sec/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_KIES:Lcom/sec/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_PROVIDER:Lcom/sec/android/allshare/Device$DeviceType;

.field public static final enum DEVICE_TV_CONTROLLER:Lcom/sec/android/allshare/Device$DeviceType;

.field public static final enum UNKNOWN:Lcom/sec/android/allshare/Device$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_IMAGEVIEWER"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/sec/android/allshare/Device$DeviceType;

    .line 73
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_AVPLAYER"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/sec/android/allshare/Device$DeviceType;

    .line 78
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_PROVIDER"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/sec/android/allshare/Device$DeviceType;

    .line 83
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_FILERECEIVER"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/sec/android/allshare/Device$DeviceType;

    .line 88
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_TV_CONTROLLER"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_TV_CONTROLLER:Lcom/sec/android/allshare/Device$DeviceType;

    .line 93
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceType;

    const-string v1, "DEVICE_KIES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_KIES:Lcom/sec/android/allshare/Device$DeviceType;

    .line 95
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceType;

    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/android/allshare/Device$DeviceType;

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/sec/android/allshare/Device$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/sec/android/allshare/Device$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/sec/android/allshare/Device$DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/sec/android/allshare/Device$DeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_TV_CONTROLLER:Lcom/sec/android/allshare/Device$DeviceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_KIES:Lcom/sec/android/allshare/Device$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceType;->$VALUES:[Lcom/sec/android/allshare/Device$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Device$DeviceType;
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    const-class v0, Lcom/sec/android/allshare/Device$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/Device$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/Device$DeviceType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceType;->$VALUES:[Lcom/sec/android/allshare/Device$DeviceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/Device$DeviceType;

    return-object v0
.end method
