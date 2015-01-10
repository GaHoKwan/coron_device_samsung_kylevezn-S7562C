.class Lcom/android/contacts/group/GroupBrowseListFragment$10;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 2333
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$10;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 2335
    const/16 v1, 0x54

    if-eq p2, v1, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_1

    .line 2336
    :cond_0
    const/4 v0, 0x1

    .line 2343
    :goto_0
    return v0

    .line 2337
    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 2338
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2339
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$10;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z
    invoke-static {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3202(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    goto :goto_0

    .line 2342
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$10;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z
    invoke-static {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3202(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    goto :goto_0
.end method
