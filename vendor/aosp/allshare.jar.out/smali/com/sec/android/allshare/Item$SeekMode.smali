.class public final enum Lcom/sec/android/allshare/Item$SeekMode;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeekMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/Item$SeekMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/Item$SeekMode;

.field public static final enum ANY:Lcom/sec/android/allshare/Item$SeekMode;

.field public static final enum BYTE:Lcom/sec/android/allshare/Item$SeekMode;

.field public static final enum NONE:Lcom/sec/android/allshare/Item$SeekMode;

.field public static final enum TIME:Lcom/sec/android/allshare/Item$SeekMode;

.field public static final enum UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/sec/android/allshare/Item$SeekMode;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$SeekMode;->BYTE:Lcom/sec/android/allshare/Item$SeekMode;

    .line 103
    new-instance v0, Lcom/sec/android/allshare/Item$SeekMode;

    const-string v1, "TIME"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$SeekMode;->TIME:Lcom/sec/android/allshare/Item$SeekMode;

    .line 105
    new-instance v0, Lcom/sec/android/allshare/Item$SeekMode;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$SeekMode;->ANY:Lcom/sec/android/allshare/Item$SeekMode;

    .line 107
    new-instance v0, Lcom/sec/android/allshare/Item$SeekMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$SeekMode;->NONE:Lcom/sec/android/allshare/Item$SeekMode;

    .line 109
    new-instance v0, Lcom/sec/android/allshare/Item$SeekMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/allshare/Item$SeekMode;

    sget-object v1, Lcom/sec/android/allshare/Item$SeekMode;->BYTE:Lcom/sec/android/allshare/Item$SeekMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/allshare/Item$SeekMode;->TIME:Lcom/sec/android/allshare/Item$SeekMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/Item$SeekMode;->ANY:Lcom/sec/android/allshare/Item$SeekMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/Item$SeekMode;->NONE:Lcom/sec/android/allshare/Item$SeekMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/allshare/Item$SeekMode;->$VALUES:[Lcom/sec/android/allshare/Item$SeekMode;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$SeekMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 99
    const-class v0, Lcom/sec/android/allshare/Item$SeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/Item$SeekMode;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/sec/android/allshare/Item$SeekMode;->$VALUES:[Lcom/sec/android/allshare/Item$SeekMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/Item$SeekMode;

    return-object v0
.end method
