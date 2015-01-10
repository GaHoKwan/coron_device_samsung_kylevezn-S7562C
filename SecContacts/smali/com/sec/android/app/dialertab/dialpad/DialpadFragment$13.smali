.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dailogBuildcreate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 5978
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 5981
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_SeparateLookupTable4ChinaDialerSearch"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hongkong_taiwan_dialer"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5984
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 5985
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 5986
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5987
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 6009
    :goto_0
    return-void

    .line 5989
    :cond_1
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 5990
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subDialogBuilder(I)V
    invoke-static {v1, p2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6006
    :catch_0
    move-exception v0

    .line 6007
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IndexOutOfBoundsException in dialogResultBuilder onClick"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5992
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 5993
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 5994
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5995
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_VoiceCall_ReplaceGsmCharToAndroidFormat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5997
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "P"

    const-string v4, ","

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "W"

    const-string v4, ";"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6001
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 6002
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 5999
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
