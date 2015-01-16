.class public final enum Lcom/sec/android/allshare/ServiceConnector$ServiceState;
.super Ljava/lang/Enum;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/ServiceConnector$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/ServiceConnector$ServiceState;

.field public static final enum DISABLED:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

.field public static final enum ENABLED:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

.field public static final enum UNABLE_TO_CONNECT:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

.field public static final enum UNABLE_TO_DISCONNECT:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

.field public static final enum UNKNOWN:Lcom/sec/android/allshare/ServiceConnector$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    .line 97
    new-instance v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    .line 102
    new-instance v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "UNABLE_TO_CONNECT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_CONNECT:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    .line 107
    new-instance v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "UNABLE_TO_DISCONNECT"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_DISCONNECT:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    .line 112
    new-instance v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->UNKNOWN:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    sget-object v1, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_CONNECT:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_DISCONNECT:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->UNKNOWN:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->$VALUES:[Lcom/sec/android/allshare/ServiceConnector$ServiceState;

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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ServiceConnector$ServiceState;
    .locals 1
    .parameter "name"

    .prologue
    .line 87
    const-class v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/ServiceConnector$ServiceState;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->$VALUES:[Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method
