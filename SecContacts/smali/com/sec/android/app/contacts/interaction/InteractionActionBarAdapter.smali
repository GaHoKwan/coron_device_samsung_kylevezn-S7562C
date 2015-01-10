.class public Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;
.super Ljava/lang/Object;
.source "InteractionActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;,
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;,
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;,
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static blockGroupsTab:Z

.field public static blockLogsTab:Z

.field private static mTalkBackEnable:Z

.field public static tabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isGroupsTabVisible:Z

.field private isLogsTabVisible:Z

.field private isNavigationTab:Z

.field private isSetupTabs:Z

.field private isStartMultiWindow:Z

.field private isUpdateTabPosition:Z

.field private final mActionBar:Landroid/app/ActionBar;

.field public mActionSpinnerAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;

.field private mCONTACTS:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentTab:I

.field private mFAVORITES:I

.field private mFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mGROUPS:I

.field private mIsMultiWindow:Z

.field private mIsTablet:Z

.field private mLOGS:I

.field private mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

.field private mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mRot:I

.field private mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

.field private sVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    sput-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 67
    sput-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    .line 148
    const-string v0, "InteractionActionBarAdapter"

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    .line 173
    sput-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTalkBackEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;IZ)V
    .locals 6
    .parameter "context"
    .parameter "actionBar"
    .parameter "rot"
    .parameter "isTablet"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    .line 146
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 175
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isSetupTabs:Z

    .line 177
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    .line 482
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 181
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 182
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 183
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 184
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    .line 189
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    .line 190
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 192
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRot:I

    .line 193
    iput-boolean p4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsTablet:Z

    .line 194
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v3, "InteractionActionBarAdapter"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 197
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sVoiceCapable:Z

    .line 213
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sVoiceCapable:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    .line 214
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    .line 216
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-nez v0, :cond_9

    .line 217
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    if-nez v0, :cond_8

    .line 218
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 219
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 220
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 221
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    .line 238
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->isMultiwindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isStartMultiWindow:Z

    .line 239
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isStartMultiWindow:Z

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsMultiWindow:Z

    .line 240
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsTablet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isStartMultiWindow:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRot:I

    if-eq v0, v4, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsTablet:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRot:I

    if-ne v0, v1, :cond_a

    :cond_2
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isNavigationTab:Z

    .line 243
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InteractionActionBarAdapter tabList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    .line 246
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    if-eqz v0, :cond_3

    .line 247
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "groups"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_3
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "favorites"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "contacts"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-eqz v0, :cond_4

    .line 251
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "logs"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_4
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InteractionActionBarAdapter initial tabList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sVoiceCapable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sVoiceCapable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blockLogsTab = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isNavigationTab:Z

    if-eqz v0, :cond_b

    .line 259
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setupTabs()V

    .line 260
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isSetupTabs:Z

    .line 267
    :goto_5
    return-void

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sVoiceCapable:Z

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 213
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 214
    goto/16 :goto_2

    .line 224
    :cond_8
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 225
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 226
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 227
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    goto/16 :goto_3

    .line 230
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    if-nez v0, :cond_0

    .line 231
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 232
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 233
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 234
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    goto/16 :goto_3

    :cond_a
    move v0, v2

    .line 240
    goto/16 :goto_4

    .line 264
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setupNavigationList()V

    .line 265
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isSetupTabs:Z

    goto :goto_5
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTalkBackEnable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sendAccessibilityEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private addTab(III)V
    .locals 3
    .parameter "tabState"
    .parameter "icon"
    .parameter "contentDescription"

    .prologue
    .line 274
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v2, "addTab"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 276
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 279
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 280
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 283
    return-void
.end method

.method private loadLastTabPreference()I
    .locals 4

    .prologue
    .line 458
    const/4 v0, 0x2

    .line 459
    .local v0, defaultTab:I
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "interactionActionBarAdapter.lastTab"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 462
    :goto_0
    return v2

    .line 460
    :catch_0
    move-exception v1

    .line 462
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private saveLastTabPreference(I)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "interactionActionBarAdapter.lastTab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 454
    return-void
.end method

.method private sendAccessibilityEvent()V
    .locals 4

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getCurrentTab()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 563
    const-string v0, ""

    .line 567
    .local v0, descriptionString:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 569
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 571
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 572
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 577
    return-void

    .line 548
    .end local v0           #descriptionString:Ljava/lang/String;
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 551
    .end local v0           #descriptionString:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0084

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 554
    .end local v0           #descriptionString:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0d023a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 557
    .end local v0           #descriptionString:Ljava/lang/String;
    :pswitch_3
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 560
    .end local v0           #descriptionString:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0316

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setupNavigationList()V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionSpinnerAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionSpinnerAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    if-nez v0, :cond_1

    .line 599
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionSpinnerAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 613
    return-void
.end method

.method private setupTabs()V
    .locals 5

    .prologue
    const v4, 0x7f020563

    const/4 v3, 0x3

    .line 581
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    if-eqz v0, :cond_0

    .line 582
    const/4 v0, 0x0

    const v1, 0x7f020562

    const v2, 0x7f0d0083

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 584
    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f020565

    const v2, 0x7f0d0084

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 585
    const/4 v0, 0x2

    const v1, 0x7f02055d

    const v2, 0x7f0d023a

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 586
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-eqz v0, :cond_1

    .line 587
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    const v0, 0x7f0d01a0

    invoke-direct {p0, v3, v4, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 591
    :cond_1
    :goto_0
    return-void

    .line 590
    :cond_2
    const v0, 0x7f0d0316

    invoke-direct {p0, v3, v4, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    goto :goto_0
.end method

.method private updateDropdownNavigation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 341
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "updateDropdownNavigation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 346
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 348
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 356
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method private updateNavigationTabs()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 303
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "updateNavigationTabs"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 307
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNavigationTabs tabList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v0, "YP-GI2"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 312
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 313
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTabState(mCurrentTab) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 338
    return-void

    .line 317
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTabState(mCurrentTab) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 324
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 326
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 327
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTabState(mCurrentTab) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 331
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTabState(mCurrentTab) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkTalkBackEnable()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTalkBackEnable:Z

    .line 540
    return-void
.end method

.method public getCurrentTab()I
    .locals 3

    .prologue
    .line 448
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    return v0
.end method

.method public getTabState(I)I
    .locals 1
    .parameter "tabState"

    .prologue
    .line 101
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 102
    .local v0, index:I
    packed-switch p1, :pswitch_data_0

    .line 117
    :goto_0
    return v0

    .line 104
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 105
    goto :goto_0

    .line 107
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 108
    goto :goto_0

    .line 110
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 111
    goto :goto_0

    .line 113
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTabStateByIndex(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 121
    const/4 v0, 0x2

    .line 123
    .local v0, state:I
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    if-ne p1, v1, :cond_1

    .line 124
    const/4 v0, 0x0

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    if-ne p1, v1, :cond_2

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    if-ne p1, v1, :cond_3

    .line 130
    const/4 v0, 0x2

    goto :goto_0

    .line 132
    :cond_3
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    if-ne p1, v1, :cond_0

    .line 133
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 2
    .parameter "savedState"
    .parameter "request"

    .prologue
    .line 286
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "InteractionActionBarAdapter.initialize"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-nez p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 295
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isNavigationTab:Z

    if-eqz v0, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->updateNavigationTabs()V

    .line 300
    :goto_1
    return-void

    .line 292
    :cond_0
    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabStateByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    goto :goto_0

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->updateDropdownNavigation()V

    goto :goto_1
.end method

.method public isMultiWindow()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsMultiWindow:Z

    return v0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 400
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 6
    .parameter "tab"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 407
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentTab tab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentTab mCurrentTab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-ne p1, v5, :cond_0

    .line 412
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentTab is INVALID"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 p1, 0x2

    .line 415
    :cond_0
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    if-ne p1, v1, :cond_1

    .line 445
    :goto_0
    return-void

    .line 418
    :cond_1
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 419
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    .line 420
    .local v0, index:I
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tabList9 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-nez v1, :cond_6

    .line 423
    if-eq v0, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 424
    :cond_2
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    .line 425
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 434
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 442
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

    if-eqz v1, :cond_5

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;->onSelectedTabChanged(I)V

    .line 444
    :cond_5
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->saveLastTabPreference(I)V

    goto :goto_0

    .line 429
    :cond_6
    if-eq v0, v5, :cond_7

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 430
    :cond_7
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    .line 431
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    goto :goto_1

    .line 437
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 439
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_2
.end method

.method public setListener(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

    .line 271
    return-void
.end method

.method public setMultiWindow(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsMultiWindow:Z

    .line 472
    return-void
.end method

.method public updateActionBarMode(I)V
    .locals 3
    .parameter "navigationMode"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 616
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRot:I

    if-ne v0, v2, :cond_0

    .line 617
    packed-switch p1, :pswitch_data_0

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 619
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 620
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setupNavigationList()V

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 624
    :pswitch_1
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    .line 625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 626
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isSetupTabs:Z

    if-nez v0, :cond_1

    .line 627
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setupTabs()V

    .line 628
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isSetupTabs:Z

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
