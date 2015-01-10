.class Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindTitleViewEntry"
.end annotation


# instance fields
.field private mIsNoSync:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "titleText"

    .prologue
    .line 2987
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 2984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mIsNoSync:Z

    .line 2988
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    .line 2989
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "titleText"
    .parameter "isNoSync"

    .prologue
    .line 2993
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 2984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mIsNoSync:Z

    .line 2994
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    .line 2995
    iput-boolean p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mIsNoSync:Z

    .line 2996
    return-void
.end method


# virtual methods
.method public getIsNoSync()Z
    .locals 1

    .prologue
    .line 3004
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mIsNoSync:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method
