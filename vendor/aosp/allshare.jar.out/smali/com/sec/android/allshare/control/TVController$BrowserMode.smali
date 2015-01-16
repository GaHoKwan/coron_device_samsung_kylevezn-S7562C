.class public final enum Lcom/sec/android/allshare/control/TVController$BrowserMode;
.super Ljava/lang/Enum;
.source "TVController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/control/TVController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowserMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/control/TVController$BrowserMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/control/TVController$BrowserMode;

.field public static final enum LINK_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

.field public static final enum POINT_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

.field public static final enum UNKNOWN:Lcom/sec/android/allshare/control/TVController$BrowserMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;

    const-string v1, "POINT_BROWSING"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/control/TVController$BrowserMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;->POINT_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    .line 130
    new-instance v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;

    const-string v1, "LINK_BROWSING"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/control/TVController$BrowserMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;->LINK_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    .line 132
    new-instance v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/control/TVController$BrowserMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;->UNKNOWN:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/allshare/control/TVController$BrowserMode;

    sget-object v1, Lcom/sec/android/allshare/control/TVController$BrowserMode;->POINT_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/allshare/control/TVController$BrowserMode;->LINK_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/control/TVController$BrowserMode;->UNKNOWN:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;->$VALUES:[Lcom/sec/android/allshare/control/TVController$BrowserMode;

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
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/control/TVController$BrowserMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 126
    const-class v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/control/TVController$BrowserMode;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;->$VALUES:[Lcom/sec/android/allshare/control/TVController$BrowserMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/control/TVController$BrowserMode;

    return-object v0
.end method
