.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchResultLayout()V
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
    .line 6431
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    const/4 v4, 0x1

    .line 6433
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSearchResultLayout onItemClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6435
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

    .line 6438
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 6439
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 6440
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6441
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    .line 6462
    :goto_0
    return-void

    .line 6443
    :cond_1
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 6444
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4800()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6445
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setSearchResultLayout NAME_RESULT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6446
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->processNameSearched(I)V
    invoke-static {v1, p3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)V

    goto :goto_0

    .line 6448
    :cond_3
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setSearchResultLayout NAME_RESULT else"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6449
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 6450
    .local v0, index:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 6451
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 6452
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->requestFocus()Z

    .line 6453
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_VoiceCall_ReplaceGsmCharToAndroidFormat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6455
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "P"

    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "W"

    const-string v4, ";"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6459
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto/16 :goto_0

    .line 6457
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
