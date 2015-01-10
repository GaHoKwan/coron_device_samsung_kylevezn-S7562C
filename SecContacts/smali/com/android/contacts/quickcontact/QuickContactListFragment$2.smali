.class Lcom/android/contacts/quickcontact/QuickContactListFragment$2;
.super Ljava/lang/Object;
.source "QuickContactListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/Action;

    .line 419
    .local v0, action:Lcom/android/contacts/quickcontact/Action;
    invoke-interface {v0}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, mimetype:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v1

    .line 421
    .local v1, isUsmEnabled:Z
    if-eqz v1, :cond_2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d042c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d045e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0359

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$300(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$300(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;->onItemClicked(Lcom/android/contacts/quickcontact/Action;Z)V

    goto :goto_0
.end method
