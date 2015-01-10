.class Lcom/android/contacts/group/GroupBrowseListFragment$11;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2327
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$11;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2329
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2330
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$11;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3202(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 2331
    return-void
.end method
