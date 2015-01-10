.class Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;
.super Ljava/lang/Object;
.source "InteractionActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTabListener"
.end annotation


# instance fields
.field public mIgnoreTabSelected:Z

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 363
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sendAccessibilityEvent()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V

    .line 366
    :cond_0
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 377
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabSelected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFilterController = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->setFilterType(I)V

    .line 383
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    if-nez v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isUpdateTabPosition:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(I)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isUpdateTabPosition:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$702(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;Z)Z

    .line 395
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabStateByIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(I)V

    .line 391
    :cond_3
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sendAccessibilityEvent()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboardInFragment(I)V

    .line 373
    :cond_1
    return-void
.end method
