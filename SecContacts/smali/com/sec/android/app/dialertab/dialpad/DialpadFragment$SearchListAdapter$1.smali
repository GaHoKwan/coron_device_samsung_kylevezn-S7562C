.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;

.field final synthetic val$ti:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5525
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;->val$ti:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 5527
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5528
    .local v0, bufId:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;->val$ti:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5529
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;->val$ti:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getContactID()I

    move-result v3

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getContactIdByRawContactId(I)I
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5534
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5535
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 5537
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5538
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;->this$1:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v2, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 5539
    return-void

    .line 5531
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;->val$ti:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getContactID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
