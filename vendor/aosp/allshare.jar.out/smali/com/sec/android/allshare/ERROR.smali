.class public final enum Lcom/sec/android/allshare/ERROR;
.super Ljava/lang/Enum;
.source "ERROR.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/ERROR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/ERROR;

.field public static final enum BAD_RESPONSE:Lcom/sec/android/allshare/ERROR;

.field public static final enum CONTENT_NOT_AVAILABLE:Lcom/sec/android/allshare/ERROR;

.field public static final enum DELETED:Lcom/sec/android/allshare/ERROR;

.field public static final enum FAIL:Lcom/sec/android/allshare/ERROR;

.field public static final enum FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

.field public static final enum FRAMEWORK_NOT_INSTALLED:Lcom/sec/android/allshare/ERROR;

.field public static final enum INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

.field public static final enum INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

.field public static final enum INVALID_OBJECT:Lcom/sec/android/allshare/ERROR;

.field public static final enum INVALID_STATE:Lcom/sec/android/allshare/ERROR;

.field public static final enum ITEM_NOT_EXIST:Lcom/sec/android/allshare/ERROR;

.field public static final enum NETWORK_NOT_AVAILABLE:Lcom/sec/android/allshare/ERROR;

.field public static final enum NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/sec/android/allshare/ERROR;

.field public static final enum NO_RESPONSE:Lcom/sec/android/allshare/ERROR;

.field public static final enum OUT_OF_MEMORY:Lcom/sec/android/allshare/ERROR;

.field public static final enum PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

.field public static final enum SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

.field public static final enum SUCCESS:Lcom/sec/android/allshare/ERROR;

.field public static final enum TIME_OUT:Lcom/sec/android/allshare/ERROR;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    .line 34
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "OUT_OF_MEMORY"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/sec/android/allshare/ERROR;

    .line 40
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "INVALID_ARGUMENT"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    .line 46
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "INVALID_OBJECT"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_OBJECT:Lcom/sec/android/allshare/ERROR;

    .line 51
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "INVALID_STATE"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_STATE:Lcom/sec/android/allshare/ERROR;

    .line 59
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "SERVICE_NOT_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 65
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "NO_RESPONSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->NO_RESPONSE:Lcom/sec/android/allshare/ERROR;

    .line 72
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "BAD_RESPONSE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->BAD_RESPONSE:Lcom/sec/android/allshare/ERROR;

    .line 78
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "NETWORK_NOT_AVAILABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/sec/android/allshare/ERROR;

    .line 83
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "CONTENT_NOT_AVAILABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/sec/android/allshare/ERROR;

    .line 89
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "INVALID_DEVICE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    .line 95
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "FEATURE_NOT_SUPPORTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    .line 100
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "PERMISSION_NOT_ALLOWED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

    .line 105
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "TIME_OUT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->TIME_OUT:Lcom/sec/android/allshare/ERROR;

    .line 111
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "ITEM_NOT_EXIST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/sec/android/allshare/ERROR;

    .line 117
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "DELETED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->DELETED:Lcom/sec/android/allshare/ERROR;

    .line 122
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "FRAMEWORK_NOT_INSTALLED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->FRAMEWORK_NOT_INSTALLED:Lcom/sec/android/allshare/ERROR;

    .line 127
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "FAIL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 133
    new-instance v0, Lcom/sec/android/allshare/ERROR;

    const-string v1, "NOT_SUPPORTED_FRAMEWORK_VERSION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/sec/android/allshare/ERROR;

    .line 23
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/sec/android/allshare/ERROR;

    sget-object v1, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/sec/android/allshare/ERROR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/allshare/ERROR;->INVALID_OBJECT:Lcom/sec/android/allshare/ERROR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/allshare/ERROR;->INVALID_STATE:Lcom/sec/android/allshare/ERROR;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/allshare/ERROR;->NO_RESPONSE:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/allshare/ERROR;->BAD_RESPONSE:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/android/allshare/ERROR;->TIME_OUT:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/android/allshare/ERROR;->DELETED:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/android/allshare/ERROR;->FRAMEWORK_NOT_INSTALLED:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/sec/android/allshare/ERROR;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/allshare/ERROR;->$VALUES:[Lcom/sec/android/allshare/ERROR;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/sec/android/allshare/ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/ERROR;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/ERROR;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sec/android/allshare/ERROR;->$VALUES:[Lcom/sec/android/allshare/ERROR;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/ERROR;

    return-object v0
.end method
