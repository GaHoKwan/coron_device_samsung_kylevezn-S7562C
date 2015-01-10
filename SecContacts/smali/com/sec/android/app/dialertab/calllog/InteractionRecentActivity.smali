.class public Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;
.super Landroid/app/Activity;
.source "InteractionRecentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$1;,
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 87
    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 75
    const-string v0, "InteractionRecentActivity"

    const-string v1, "onAttachFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setOnRecentListListener(Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;)V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->configureActionBar()V

    .line 69
    const v0, 0x7f0d0316

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 70
    const v0, 0x7f04010f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 96
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 99
    const v1, 0x7f0903a5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f0d0052

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 101
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v2, 0x7f0d0053

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 103
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 110
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 113
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 116
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->sendNum()V

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_1
        0x7f0903b5 -> :sswitch_2
    .end sparse-switch
.end method
