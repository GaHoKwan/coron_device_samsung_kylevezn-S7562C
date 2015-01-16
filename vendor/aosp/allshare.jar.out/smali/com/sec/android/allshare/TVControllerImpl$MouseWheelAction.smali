.class final enum Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;
.super Ljava/lang/Enum;
.source "TVControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/TVControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MouseWheelAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

.field public static final enum DOWN:Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

.field public static final enum UP:Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 925
    new-instance v0, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;->UP:Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    .line 927
    new-instance v0, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;->DOWN:Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    .line 923
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    sget-object v1, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;->UP:Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;->DOWN:Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;->$VALUES:[Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

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
    .line 923
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 923
    const-class v0, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;
    .locals 1

    .prologue
    .line 923
    sget-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;->$VALUES:[Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    return-object v0
.end method
