.class Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Charge"
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"


# instance fields
.field private final CMAS_MESSAGE_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_MSG:I

.field private mBatteryLevel:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCMASIcon:Landroid/widget/ImageView;

.field private mCMASNotiInfo:Landroid/app/NotificationInfo;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/widget/ImageView;

.field private mChargingText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mPluggedIn:Z

.field private mPrevShowingCMASText:Z

.field private mShowingBatteryInfo:Z

.field private mShowingCMASText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 1619
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1588
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 1589
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPluggedIn:Z

    .line 1590
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBatteryLevel:I

    .line 1591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 1593
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->MSG_PKG:Ljava/lang/String;

    .line 1594
    const/16 v0, 0x41c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->REQ_INDEX_MSG:I

    .line 1595
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    .line 1596
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z

    .line 1600
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->CMAS_MESSAGE_UPDATE:I

    .line 1602
    new-instance v0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mHandler:Landroid/os/Handler;

    .line 1620
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1621
    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1582
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->getCMASCount()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1582
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1582
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1582
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1582
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->updateChargingInfo()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setMarquee(Z)V

    return-void
.end method

.method private getCMASCount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1760
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1762
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->MSG_PKG:Ljava/lang/String;

    const/16 v2, 0x41c

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    .line 1766
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_0

    .line 1767
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    if-lez v1, :cond_3

    .line 1768
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSprintDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->commonValue:I

    if-nez v1, :cond_2

    .line 1769
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    goto :goto_0

    .line 1771
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    goto :goto_0

    .line 1774
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    goto :goto_0
.end method

.method private setMarquee(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1752
    if-eqz p1, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1757
    :goto_0
    return-void

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateChargingInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1674
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    if-eqz v3, :cond_2

    .line 1675
    const/4 v0, 0x0

    .line 1676
    .local v0, cmasText:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1677
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSprintDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1678
    const-string v3, "ClockWidget"

    const-string v4, "[updateChargingInfo] show cmas text - SPR!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10407b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1689
    :goto_0
    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1690
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1691
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1692
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1741
    .end local v0           #cmasText:Ljava/lang/String;
    :goto_1
    return-void

    .line 1681
    .restart local v0       #cmasText:Ljava/lang/String;
    :cond_0
    const-string v3, "ClockWidget"

    const-string v4, "[updateChargingInfo] show cmas text - No SPR!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10407b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1685
    :cond_1
    const-string v3, "ClockWidget"

    const-string v4, "[updateChargingInfo] No show cmas text !! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1698
    .end local v0           #cmasText:Ljava/lang/String;
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingBatteryInfo:Z

    if-nez v3, :cond_4

    .line 1699
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$2800()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v2

    .line 1701
    .local v2, ownerInfoEnabled:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$2900()Landroid/widget/TextView;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 1702
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$2800()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo()Ljava/lang/String;

    move-result-object v1

    .line 1703
    .local v1, ownerInfo:Ljava/lang/String;
    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1704
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1705
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1706
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1707
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1710
    .end local v1           #ownerInfo:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1715
    .end local v2           #ownerInfoEnabled:Z
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingBatteryInfo:Z

    if-eqz v3, :cond_8

    .line 1716
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPluggedIn:Z

    if-eqz v3, :cond_7

    .line 1717
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1718
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040460

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 1731
    :goto_2
    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1733
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1734
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1735
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1720
    :cond_5
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharging()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1721
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104045f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_2

    .line 1723
    :cond_6
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1729
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040462

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_2

    .line 1737
    :cond_8
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1738
    const-string v3, " "

    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1625
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1627
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1628
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1629
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1631
    new-instance v1, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$2;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1642
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1643
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSprintDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1644
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->refreshCMASInfo()V

    .line 1647
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1651
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1654
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1657
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 1661
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 1662
    const v0, 0x10202fc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    .line 1663
    const v0, 0x10202fe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    .line 1664
    const v0, 0x10202fd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    .line 1665
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSprintDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVirginMobileDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    const v1, 0x1080440

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1671
    :cond_1
    :goto_0
    return-void

    .line 1668
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1669
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    const v1, 0x1080441

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public refreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1745
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 1746
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPluggedIn:Z

    .line 1747
    iput p3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBatteryLevel:I

    .line 1748
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->updateChargingInfo()V

    .line 1749
    return-void
.end method

.method public refreshCMASInfo()V
    .locals 2

    .prologue
    .line 1780
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->getCMASCount()V

    .line 1781
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    if-eq v0, v1, :cond_0

    .line 1782
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->updateChargingInfo()V

    .line 1783
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z

    .line 1785
    :cond_0
    return-void
.end method
