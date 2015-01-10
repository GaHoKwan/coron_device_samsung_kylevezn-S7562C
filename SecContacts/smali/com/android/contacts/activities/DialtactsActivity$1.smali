.class Lcom/android/contacts/activities/DialtactsActivity$1;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 755
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->sendAccessibilityEvent(Landroid/app/ActionBar$Tab;)V
    invoke-static {v0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->access$3200(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/ActionBar$Tab;)V

    .line 758
    :cond_0
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$900(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$1100()I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z
    invoke-static {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$902(Lcom/android/contacts/activities/DialtactsActivity;Z)Z

    :cond_0
    move v1, v0

    .line 480
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_hvga"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DEFAULT"

    const-string v2, "PHONE_WHITE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    const/high16 v2, 0x3f40

    .line 482
    const v3, 0x3f333333

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 583
    :cond_1
    :goto_0
    const/4 v0, 0x3

    if-ne v1, v0, :cond_9

    .line 584
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 586
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 591
    :goto_1
    const-string v1, "from_phone_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 595
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v1, :cond_2

    .line 596
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 597
    const-string v1, "DialtactsActivity"

    const-string v2, "onTabSelected, recovery previously tab"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z
    invoke-static {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$902(Lcom/android/contacts/activities/DialtactsActivity;Z)Z

    .line 599
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$1100()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 601
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2400(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/multiwindow/MultiWindowManager;->getSelf(Landroid/content/Context;)Landroid/sec/multiwindow/MultiWindowManager;

    move-result-object v1

    .line 602
    sget v2, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_SAME:I

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_FREE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/sec/multiwindow/MultiWindowManager;->makeIntent(ILandroid/graphics/Rect;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 610
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 611
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/high16 v1, 0x7f05

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->overridePendingTransition(II)V

    .line 751
    :goto_3
    return-void

    .line 486
    :pswitch_0
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color017:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 488
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 490
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 491
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 492
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 493
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 494
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 495
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f090021

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 498
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 500
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 501
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 502
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 503
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 504
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 505
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 509
    :pswitch_1
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 510
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color017:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 511
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 513
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 514
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 515
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 516
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 517
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 518
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 520
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f090021

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 521
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 523
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 524
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 525
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 526
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 527
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 528
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 532
    :pswitch_2
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 533
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color017:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 534
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 536
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 537
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 538
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 539
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 540
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 541
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 543
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f090021

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 544
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 546
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 547
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 548
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 549
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 550
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 551
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 555
    :pswitch_3
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 556
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 557
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 559
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 560
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 561
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 562
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 563
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 564
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 568
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f090021

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 569
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 571
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 572
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 573
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 574
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 575
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 576
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 588
    :cond_7
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 604
    :cond_8
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1102(I)I

    .line 605
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v2, 0x3

    #setter for: Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I
    invoke-static {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$2502(Lcom/android/contacts/activities/DialtactsActivity;I)I

    goto/16 :goto_2

    .line 619
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 620
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v0, :cond_b

    .line 622
    const-string v0, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tab select. from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$2600(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 626
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_4
    #calls: Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V
    invoke-static {v2, v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$300(Lcom/android/contacts/activities/DialtactsActivity;Z)V

    .line 628
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 631
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    if-eq v0, v2, :cond_c

    .line 632
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    .line 633
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 644
    :cond_c
    :goto_5
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_d

    .line 648
    const/4 v0, 0x3

    if-eq v1, v0, :cond_d

    .line 649
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #setter for: Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I
    invoke-static {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2502(Lcom/android/contacts/activities/DialtactsActivity;I)I

    .line 653
    :cond_d
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 654
    const-string v0, "DialtactsActivity"

    const-string v2, "onTabSelected"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v2, 0x7f090231

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 656
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v3, 0x7f090236

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 657
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v4, 0x7f09023e

    invoke-virtual {v3, v4}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 658
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v5, 0x7f090095

    invoke-virtual {v4, v5}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 659
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v6, 0x7f090239

    invoke-virtual {v5, v6}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 660
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v7, 0x7f090235

    invoke-virtual {v6, v7}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 661
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v8, 0x7f09010c

    invoke-virtual {v7, v8}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 662
    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v9, 0x7f09023a

    invoke-virtual {v8, v9}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 663
    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v10, 0x7f09023f

    invoke-virtual {v9, v10}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 664
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v11, 0x7f090241

    invoke-virtual {v10, v11}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 666
    iget-object v11, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v11}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    .line 667
    invoke-virtual {v11}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v12

    .line 669
    packed-switch v1, :pswitch_data_1

    .line 748
    :goto_6
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 750
    :cond_e
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1102(I)I

    goto/16 :goto_3

    .line 626
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 638
    :cond_10
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_5

    .line 672
    :pswitch_4
    iget-object v11, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v11}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 673
    iget-object v11, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v11}, Lcom/android/contacts/activities/DialtactsActivity;->access$2800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    .line 674
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 675
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 676
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 677
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 678
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 679
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 680
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 681
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 682
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 683
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 686
    :pswitch_5
    iget-object v11, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v11}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 687
    iget-object v11, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v11}, Lcom/android/contacts/activities/DialtactsActivity;->access$2800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    .line 688
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 689
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$2800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getLogsCount()I

    move-result v3

    if-eqz v3, :cond_11

    .line 690
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 691
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 692
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :goto_7
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 699
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 700
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 701
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 702
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 703
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 694
    :cond_11
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 695
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 696
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 707
    :pswitch_6
    iget-object v13, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v13}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 708
    iget-object v13, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v13}, Lcom/android/contacts/activities/DialtactsActivity;->access$2800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    .line 709
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 710
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 711
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 712
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 713
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 714
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 715
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 717
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 718
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 719
    const-string v4, "IsDialerFrom"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    const-string v4, "Portrait"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 722
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$2900(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 723
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$3000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 724
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 725
    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :goto_8
    invoke-virtual {v12}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 736
    invoke-virtual {v11}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 737
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$3100()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 738
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 739
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 740
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 727
    :cond_12
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 728
    const-string v4, "IsDialerFrom"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 729
    const-string v4, "Portrait"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 730
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$2900(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 731
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$3000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 732
    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 733
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 742
    :cond_13
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 743
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 744
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 484
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 669
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 468
    return-void
.end method
