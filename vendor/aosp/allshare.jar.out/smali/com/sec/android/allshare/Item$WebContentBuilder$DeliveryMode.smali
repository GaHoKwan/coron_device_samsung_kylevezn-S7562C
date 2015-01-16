.class public final enum Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/Item$WebContentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field public static final enum REDIRECT:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field public static final enum RELAY:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field public static final enum UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 956
    new-instance v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const-string v1, "RELAY"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->RELAY:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 962
    new-instance v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const-string v1, "REDIRECT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->REDIRECT:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 966
    new-instance v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 951
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    sget-object v1, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->RELAY:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->REDIRECT:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->$VALUES:[Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

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
    .line 951
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 951
    const-class v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 1

    .prologue
    .line 951
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->$VALUES:[Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0
.end method
