.class Lcom/android/contacts/ContactLoader$BuddyChatOnQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuddyChatOnQuery"
.end annotation


# static fields
.field static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 938
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "orgnum"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "voip"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "voicecall_support"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "videocall_support"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactLoader$BuddyChatOnQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method