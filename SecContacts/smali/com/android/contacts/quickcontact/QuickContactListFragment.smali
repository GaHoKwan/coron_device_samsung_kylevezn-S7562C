.class public Lcom/android/contacts/quickcontact/QuickContactListFragment;
.super Landroid/app/Fragment;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    }
.end annotation


# static fields
.field private static isVoLTEEnabled:Z


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mFragmentContainer:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private final mOutsideClickListener:Landroid/view/View$OnClickListener;

.field protected final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field protected final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 406
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 436
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 444
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 92
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->isVoLTEEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    return-object v0
.end method

.method private configureAdapter()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 125
    const v0, 0x7f04013b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f090261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    .line 128
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 130
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 136
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {v0}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    .line 138
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->isVoLTEEnabled:Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 121
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    .line 145
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 146
    return-void
.end method

.method public setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    .line 150
    return-void
.end method

.method public updateVolteImage(Z)V
    .locals 2
    .parameter "isVolteEnabled"

    .prologue
    .line 458
    const-string v0, "QuickContactListFragment"

    const-string v1, "handleIMSRegistrationEvent"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    sput-boolean p1, Lcom/android/contacts/quickcontact/QuickContactListFragment;->isVoLTEEnabled:Z

    .line 460
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 462
    return-void
.end method
