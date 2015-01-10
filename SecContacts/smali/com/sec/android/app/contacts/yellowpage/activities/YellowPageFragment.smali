.class public Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;
.super Landroid/app/Fragment;
.source "YellowPageFragment.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMemberListView:Landroid/widget/ListView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 66
    const v0, 0x7f04018b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;->mRootView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;->mMemberListView:Landroid/widget/ListView;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 87
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 82
    return-void
.end method
