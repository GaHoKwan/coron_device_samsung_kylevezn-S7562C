.class public final enum Lcom/sec/android/allshare/Item$MediaType;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/Item$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/Item$MediaType;

.field public static final enum ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

.field public static final enum ITEM_FOLDER:Lcom/sec/android/allshare/Item$MediaType;

.field public static final enum ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

.field public static final enum ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

.field public static final enum ITEM_VIDEO:Lcom/sec/android/allshare/Item$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/sec/android/allshare/Item$MediaType;

    const-string v1, "ITEM_FOLDER"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/sec/android/allshare/Item$MediaType;

    .line 68
    new-instance v0, Lcom/sec/android/allshare/Item$MediaType;

    const-string v1, "ITEM_AUDIO"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

    .line 70
    new-instance v0, Lcom/sec/android/allshare/Item$MediaType;

    const-string v1, "ITEM_IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    .line 72
    new-instance v0, Lcom/sec/android/allshare/Item$MediaType;

    const-string v1, "ITEM_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/sec/android/allshare/Item$MediaType;

    .line 74
    new-instance v0, Lcom/sec/android/allshare/Item$MediaType;

    const-string v1, "ITEM_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/allshare/Item$MediaType;

    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/sec/android/allshare/Item$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/sec/android/allshare/Item$MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/allshare/Item$MediaType;->$VALUES:[Lcom/sec/android/allshare/Item$MediaType;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;
    .locals 1
    .parameter "name"

    .prologue
    .line 64
    const-class v0, Lcom/sec/android/allshare/Item$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/Item$MediaType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->$VALUES:[Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/Item$MediaType;

    return-object v0
.end method
