.class Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNavigationListener"
.end annotation


# instance fields
.field public mIgnoreNavigationItemSelected:Z

.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 749
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 6
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    const/4 v5, 0x0

    .line 753
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    if-nez v2, :cond_2

    .line 754
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$700(Lcom/android/contacts/activities/ActionBarAdapter;)I

    move-result v2

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$800(Lcom/android/contacts/activities/ActionBarAdapter;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 756
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 759
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1100(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I
    invoke-static {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->access$600(Lcom/android/contacts/activities/ActionBarAdapter;)I

    move-result v4

    #calls: Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I
    invoke-static {v3, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1000(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 772
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 773
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 778
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/sec/multiwindow/MultiWindowManager;->getSelf(Landroid/content/Context;)Landroid/sec/multiwindow/MultiWindowManager;

    move-result-object v1

    .line 780
    .local v1, multiWindowManager:Landroid/sec/multiwindow/MultiWindowManager;
    sget v2, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_SAME:I

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_FREE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/sec/multiwindow/MultiWindowManager;->makeIntent(ILandroid/graphics/Rect;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 784
    .end local v1           #multiWindowManager:Landroid/sec/multiwindow/MultiWindowManager;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 785
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/high16 v3, 0x7f05

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 790
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    invoke-static {}, Lcom/android/contacts/activities/ActionBarAdapter;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #calls: Lcom/android/contacts/activities/ActionBarAdapter;->sendAccessibilityEvent()V
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$400(Lcom/android/contacts/activities/ActionBarAdapter;)V

    .line 796
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 763
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2, p1, v5}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 765
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onDialerTabSelected()V

    goto :goto_0

    .line 787
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #calls: Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I
    invoke-static {v3, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1200(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    goto :goto_1
.end method
