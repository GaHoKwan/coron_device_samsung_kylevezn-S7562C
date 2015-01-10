.class Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;
.super Ljava/lang/Object;
.source "InteractionActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setupNavigationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabStateByIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabStateByIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(I)V

    .line 607
    const/4 v0, 0x1

    return v0
.end method
