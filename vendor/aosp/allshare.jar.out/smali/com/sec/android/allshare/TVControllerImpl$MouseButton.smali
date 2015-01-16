.class final enum Lcom/sec/android/allshare/TVControllerImpl$MouseButton;
.super Ljava/lang/Enum;
.source "TVControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/TVControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MouseButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/TVControllerImpl$MouseButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

.field public static final enum LBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

.field public static final enum MBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

.field public static final enum NONE:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

.field public static final enum RBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

.field public static final enum SIDE_LBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

.field public static final enum SIDE_RBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 905
    new-instance v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->NONE:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    .line 907
    new-instance v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    const-string v1, "LBUTTON"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->LBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    .line 909
    new-instance v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    const-string v1, "MBUTTON"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->MBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    .line 911
    new-instance v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    const-string v1, "RBUTTON"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->RBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    .line 913
    new-instance v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    const-string v1, "SIDE_LBUTTON"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->SIDE_LBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    .line 915
    new-instance v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    const-string v1, "SIDE_RBUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->SIDE_RBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    .line 903
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    sget-object v1, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->NONE:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->LBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->MBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->RBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->SIDE_LBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->SIDE_RBUTTON:Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->$VALUES:[Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

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
    .line 903
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/TVControllerImpl$MouseButton;
    .locals 1
    .parameter "name"

    .prologue
    .line 903
    const-class v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/TVControllerImpl$MouseButton;
    .locals 1

    .prologue
    .line 903
    sget-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseButton;->$VALUES:[Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/TVControllerImpl$MouseButton;

    return-object v0
.end method
