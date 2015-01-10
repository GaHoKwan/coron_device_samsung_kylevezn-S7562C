.class Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNavigationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1577
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 1581
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNavigationItemSelected, itemPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$4300(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$1100()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1585
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$1100()I

    move-result p1

    .line 1586
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z
    invoke-static {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$4302(Lcom/android/contacts/activities/DialtactsActivity;Z)Z

    .line 1591
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1592
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1593
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1594
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1599
    :goto_0
    const-string v1, "from_phone_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1601
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1602
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v1, :cond_2

    .line 1603
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1604
    const-string v1, "DialtactsActivity"

    const-string v2, "onNavigationItemSelected, recovery previously tab"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z
    invoke-static {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$902(Lcom/android/contacts/activities/DialtactsActivity;Z)Z

    .line 1606
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$1100()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1613
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1614
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/high16 v1, 0x7f05

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->overridePendingTransition(II)V

    .line 1615
    const/4 v0, 0x1

    .line 1727
    :goto_2
    return v0

    .line 1596
    :cond_3
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1608
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v2, 0x3

    #setter for: Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I
    invoke-static {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$2502(Lcom/android/contacts/activities/DialtactsActivity;I)I

    goto :goto_1

    .line 1618
    :cond_5
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1622
    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    .line 1623
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #setter for: Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I
    invoke-static {v0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2502(Lcom/android/contacts/activities/DialtactsActivity;I)I

    .line 1626
    :cond_6
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1627
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->sendAccessibilityEvent(I)V
    invoke-static {v0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->access$4400(Lcom/android/contacts/activities/DialtactsActivity;I)V

    .line 1631
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1632
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v1, 0x7f090231

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1633
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v2, 0x7f090236

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1634
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v3, 0x7f09023e

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1635
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v4, 0x7f090095

    invoke-virtual {v3, v4}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1636
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v5, 0x7f090239

    invoke-virtual {v4, v5}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1637
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v6, 0x7f090235

    invoke-virtual {v5, v6}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1638
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v7, 0x7f09010c

    invoke-virtual {v6, v7}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1639
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v8, 0x7f09023a

    invoke-virtual {v7, v8}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1640
    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v9, 0x7f09023f

    invoke-virtual {v8, v9}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1641
    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v10, 0x7f090241

    invoke-virtual {v9, v10}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1643
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v10}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    .line 1644
    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v11

    .line 1646
    packed-switch p1, :pswitch_data_0

    .line 1723
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 1724
    invoke-static {p1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1102(I)I

    .line 1727
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1648
    :pswitch_0
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v10}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 1649
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v10}, Lcom/android/contacts/activities/DialtactsActivity;->access$2800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    .line 1650
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1651
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1652
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1655
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1656
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1659
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1662
    :pswitch_1
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v10}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 1663
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v10}, Lcom/android/contacts/activities/DialtactsActivity;->access$2800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    .line 1664
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1665
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$2800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getLogsCount()I

    move-result v2

    if-eqz v2, :cond_9

    .line 1666
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1667
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1668
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1674
    :goto_4
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1675
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1676
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1677
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1678
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1679
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1670
    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1672
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1683
    :pswitch_2
    iget-object v12, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v12}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 1684
    iget-object v12, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v12}, Lcom/android/contacts/activities/DialtactsActivity;->access$2800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    .line 1685
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1686
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1687
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1688
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1689
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1690
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1691
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1693
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 1694
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1695
    const-string v3, "IsDialerFrom"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1696
    const-string v3, "Portrait"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1697
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$2900(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1698
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$3000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1699
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1700
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1710
    :goto_5
    invoke-virtual {v11}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1711
    invoke-virtual {v10}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1712
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$3100()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1713
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1714
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1715
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1702
    :cond_a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1703
    const-string v3, "IsDialerFrom"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1704
    const-string v3, "Portrait"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1705
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$2900(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1706
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$3000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1707
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1708
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1717
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1718
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1719
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1646
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
