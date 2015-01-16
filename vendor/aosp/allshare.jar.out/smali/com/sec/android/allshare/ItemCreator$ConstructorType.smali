.class final enum Lcom/sec/android/allshare/ItemCreator$ConstructorType;
.super Ljava/lang/Enum;
.source "ItemCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ItemCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConstructorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/ItemCreator$ConstructorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/ItemCreator$ConstructorType;

.field public static final enum LOCAL_CONTENT:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

.field public static final enum MEDIA_SERVER:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

.field public static final enum UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

.field public static final enum WEB_CONTENT:Lcom/sec/android/allshare/ItemCreator$ConstructorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "MEDIA_SERVER"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    new-instance v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "WEB_CONTENT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    new-instance v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "LOCAL_CONTENT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    new-instance v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    sget-object v1, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->$VALUES:[Lcom/sec/android/allshare/ItemCreator$ConstructorType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ItemCreator$ConstructorType;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/ItemCreator$ConstructorType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->$VALUES:[Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method
