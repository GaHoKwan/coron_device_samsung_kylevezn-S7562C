.class public Lcom/android/contacts/list/ContactTileListFragment;
.super Landroid/app/Fragment;
.source "ContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
.implements Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileListFragment$8;,
        Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;,
        Lcom/android/contacts/list/ContactTileListFragment$Listener;
    }
.end annotation


# static fields
.field private static LOADER_CONTACTS:I

.field private static final TAG:Ljava/lang/String;

.field public static callPressed:Z


# instance fields
.field private empty_layout:Landroid/widget/LinearLayout;

.field private hasPermanentMenuKey:Z

.field private mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

.field private mChagingSplitRatioMode:Z

.field private mColumnCount:I

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mContactTileView:Lcom/android/contacts/list/ContactTileView;

.field private mContext:Landroid/content/Context;

.field private mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

.field private mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

.field private mEmptyViewContainer:Landroid/widget/LinearLayout;

.field private mFirstFavoriteUri:Landroid/net/Uri;

.field private mIsVoLTEEnabled:Z

.field private mListLayout:Landroid/view/View;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mScreenOrientation:I

.field private mSelectedFavoriteUri:Landroid/net/Uri;

.field mSelectionVisible:Z

.field private mSendKeySelectedFavoriteUri:Landroid/net/Uri;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

.field private mTWJoinListView:Z

.field private mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-class v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    sput v0, Lcom/android/contacts/list/ContactTileListFragment;->LOADER_CONTACTS:I

    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/list/ContactTileListFragment;->callPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 141
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mChagingSplitRatioMode:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsVoLTEEnabled:Z

    .line 475
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$2;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 597
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$3;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/VoLTEStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/ContactTileListFragment;Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSendKeySelectedFavoriteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSendKeySelectedFavoriteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    return-object p1
.end method

.method private addActionBarMargin(Z)V
    .locals 4
    .parameter "addMargin"

    .prologue
    .line 734
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 735
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v3, 0x7f090185

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 736
    .local v0, mainLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 738
    .local v1, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_1

    .line 739
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 746
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    .end local v0           #mainLayout:Landroid/widget/FrameLayout;
    .end local v1           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void

    .line 743
    .restart local v0       #mainLayout:Landroid/widget/FrameLayout;
    .restart local v1       #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private cleanupResouces()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 923
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    .line 924
    return-void
.end method

.method private configureCustomActionBarAtBottom()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 705
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 706
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v5, 0x7f090191

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 707
    .local v1, divider:Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v5, 0x7f09018e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 708
    .local v0, bottomActionBar:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 709
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v5, 0x7f09018f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 712
    .local v3, searchButton:Landroid/view/View;
    new-instance v4, Lcom/android/contacts/list/ContactTileListFragment$5;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactTileListFragment$5;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    const v4, 0x7f090190

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 721
    .local v2, menuButton:Landroid/view/View;
    new-instance v4, Lcom/android/contacts/list/ContactTileListFragment$6;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactTileListFragment$6;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    .end local v0           #bottomActionBar:Landroid/view/View;
    .end local v1           #divider:Landroid/view/View;
    .end local v2           #menuButton:Landroid/view/View;
    .end local v3           #searchButton:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3
    .parameter "anchorView"

    .prologue
    .line 659
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 660
    .local v1, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 661
    .local v0, menu:Landroid/view/Menu;
    const/high16 v2, 0x7f12

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 662
    new-instance v2, Lcom/android/contacts/list/ContactTileListFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/list/ContactTileListFragment$4;-><init>(Lcom/android/contacts/list/ContactTileListFragment;Landroid/widget/PopupMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 669
    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 670
    return-object v1
.end method

.method private copyToDialingScreen(Landroid/net/Uri;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1178
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v4

    .line 1181
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 1182
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0d0256

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    .line 1190
    :goto_0
    return-void

    .line 1186
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    const-string v6, "tel"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1187
    const-string v0, "withSpecialChar"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1188
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private createLauncherShortcutWithContact()V
    .locals 3

    .prologue
    .line 1372
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1374
    .local v1, parentActivity:Landroid/app/Activity;
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    new-instance v2, Lcom/android/contacts/list/ContactTileListFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/list/ContactTileListFragment$7;-><init>(Lcom/android/contacts/list/ContactTileListFragment;Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 1386
    .local v0, builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    .line 1387
    return-void
.end method

.method private getCurrentScreenOrientation()I
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 1326
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1327
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v7

    const-string v0, "data2"

    aput-object v0, v2, v1

    .line 1330
    const-string v0, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1332
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1336
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1339
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1340
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1343
    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1345
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1348
    :cond_1
    if-eqz v0, :cond_2

    .line 1349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1352
    :cond_2
    return-object v6
.end method

.method private getXpositionOfDisplayNameTextView()F
    .locals 5

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 854
    .local v1, photowidth:F
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 856
    .local v0, leftMargin:F
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 858
    .local v2, textGap:F
    add-float v3, v1, v0

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    add-float/2addr v3, v4

    return v3
.end method

.method private isBlackListContact(J)Z
    .locals 7
    .parameter "contactId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1278
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->queryBlackList()Ljava/util/HashMap;

    move-result-object v3

    .line 1279
    .local v3, rejectCallHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v2

    .line 1281
    .local v2, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1282
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1283
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1284
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_2

    :cond_0
    move v4, v5

    .line 1293
    .end local v1           #phoneNumber:Ljava/lang/String;
    :goto_1
    return v4

    :cond_1
    move v4, v5

    .line 1290
    goto :goto_1

    .line 1281
    .restart local v1       #phoneNumber:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #phoneNumber:Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 1293
    goto :goto_1
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 903
    if-eqz p1, :cond_0

    .line 904
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 911
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 912
    .local v1, imageView:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 913
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 917
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_1
    :goto_1
    return-void

    .line 906
    :catch_0
    move-exception v2

    goto :goto_0

    .line 915
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 885
    if-eqz p1, :cond_1

    .line 887
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 889
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 890
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 891
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 892
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 894
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childCount:I
    .end local v3           #index:I
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :catch_0
    move-exception v5

    .line 897
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->nullViewDrawable(Landroid/view/View;)V

    .line 899
    :cond_1
    return-void
.end method

.method private queryBlackList()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1297
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1298
    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 1299
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v8

    const-string v0, "reject_checked"

    aput-object v0, v2, v7

    .line 1302
    const-string v0, "reject_match = 0"

    .line 1304
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reject_match = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_2

    .line 1307
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v7, :cond_0

    .line 1308
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 1322
    :goto_0
    return-object v0

    .line 1312
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1314
    :cond_1
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1315
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1316
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1319
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 1322
    goto :goto_0
.end method

.method private queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1431
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1432
    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1434
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "data1"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "vnd.android.cursor.item/phone_v2"

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1439
    if-eqz v0, :cond_0

    .line 1440
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v5, v0

    .line 1445
    :cond_0
    :goto_0
    return-object v5

    .line 1443
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private screenOrientationChanged()Z
    .locals 2

    .prologue
    .line 350
    iget v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mScreenOrientation:I

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getCurrentScreenOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getCurrentScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mScreenOrientation:I

    .line 352
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 675
    const v1, 0x7f090370

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 676
    const v1, 0x7f09036e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 677
    const v1, 0x7f09036f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 678
    const v1, 0x7f090377

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 679
    const v1, 0x7f090379

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 680
    const v1, 0x7f09037a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 681
    const v1, 0x7f09037b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 682
    const v1, 0x7f09037d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 683
    const v1, 0x7f09037e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 684
    const v1, 0x7f09037f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 685
    const v1, 0x7f090382

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 686
    const v1, 0x7f09037c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 687
    const v1, 0x7f090383

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 688
    const v1, 0x7f090384

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 689
    const v1, 0x7f090385

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 690
    const v1, 0x7f090386

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 691
    const v1, 0x7f090372

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 692
    const v1, 0x7f090374

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 694
    const v1, 0x7f090380

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 695
    .local v0, contactCounterMenu:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 696
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 698
    :cond_0
    const v1, 0x7f090387

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 699
    const v1, 0x7f090388

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 700
    const v1, 0x7f090381

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 701
    return-void
.end method

.method private updateSweepActionFeasibility()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 818
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v2, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_SweepOperationArea"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, cscSweepArea:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 826
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 827
    iput-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 828
    iput-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 830
    const-string v2, "ExcludeAvatar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 832
    iput-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    .line 833
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepRestrictionCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;)V

    .line 834
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    .line 836
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->isSweepActionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v2, :cond_4

    .line 838
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->configureSweepActionCallbackAndListener()V

    .line 840
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 841
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 843
    const-string v2, "ExcludeAvatar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getXpositionOfDisplayNameTextView()F

    move-result v0

    .line 846
    .local v0, Xposition:F
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto :goto_0
.end method


# virtual methods
.method public callSelection(Landroid/net/Uri;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1390
    .line 1393
    const-string v0, "kitty"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callSelection mSendKeySelectedFavoriteUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    if-eqz p1, :cond_1

    .line 1396
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1397
    invoke-direct {p0, v2, v3}, Lcom/android/contacts/list/ContactTileListFragment;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v2

    .line 1398
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1399
    :cond_0
    if-eqz v2, :cond_6

    .line 1400
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1416
    :goto_0
    if-nez v0, :cond_5

    .line 1417
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1424
    :goto_1
    if-eqz v2, :cond_1

    .line 1425
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1428
    :cond_1
    return-void

    .line 1402
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 1404
    const-string v0, "data1"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1406
    :cond_3
    const/4 v0, -0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1407
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1408
    const-string v0, "is_super_primary"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1410
    const-string v0, "data1"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1419
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    invoke-static {v5, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1420
    const/high16 v0, 0x1000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1421
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 5

    .prologue
    .line 879
    new-instance v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionBarCallBack(Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;)V

    .line 880
    new-instance v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getSweepActionBarCallBack()Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;Lcom/android/contacts/list/DefaultContactListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 882
    return-void
.end method

.method public enableQuickContact(Z)V
    .locals 1
    .parameter "enableQuickContact"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->enableQuickContact(Z)V

    .line 473
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    if-nez v0, :cond_0

    .line 592
    const/4 v0, -0x1

    .line 594
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method protected final getSweepActionBarCallBack()Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    return-object v0
.end method

.method protected inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"
    .parameter "layoutResourceId"

    .prologue
    const v6, 0x7f0900bc

    const v5, 0x7f0900b8

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 273
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p1, p4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v1, 0x7f090187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    .line 278
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 282
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsCanFocus(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    if-eqz p3, :cond_4

    .line 304
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v0, :cond_4

    .line 305
    const-string v0, "selectedfavorite"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    .line 306
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setSelectedUri(Landroid/net/Uri;)V

    .line 307
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 311
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->hasPermanentMenuKey:Z

    if-nez v0, :cond_6

    .line 314
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_5

    .line 315
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->configureCustomActionBarAtBottom()V

    .line 318
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v0, :cond_b

    .line 319
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    if-nez v0, :cond_a

    .line 320
    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->addActionBarMargin(Z)V

    .line 329
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 330
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 334
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 335
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    return-object v0

    .line 292
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 293
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 323
    :cond_a
    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->addActionBarMargin(Z)V

    goto :goto_1

    .line 327
    :cond_b
    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->addActionBarMargin(Z)V

    goto :goto_1
.end method

.method public initStreListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 756
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setViewType(Z)V

    .line 757
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    if-eqz v0, :cond_3

    .line 758
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 760
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled(Z)V

    .line 768
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    if-eqz v0, :cond_4

    .line 770
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 777
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 778
    return-void

    .line 762
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled(Z)V

    goto :goto_0

    .line 765
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled(Z)V

    goto :goto_0

    .line 772
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/16 v1, 0xa

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public isContactWritable(Ljava/lang/String;)Z
    .locals 10
    .parameter "contactLink"

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 1134
    .local v1, accountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    move-object v6, p1

    .line 1135
    .local v6, linkColumnString:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .local v2, accountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v4, dataSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6, v2, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1139
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1140
    .local v7, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 1141
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1142
    .local v0, accountType:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1143
    .local v3, dataSet:Ljava/lang/String;
    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v8

    .line 1144
    .local v8, type:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v8}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1145
    const/4 v9, 0x1

    .line 1148
    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v8           #type:Lcom/android/contacts/model/AccountType;
    :goto_1
    return v9

    .line 1140
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v3       #dataSet:Ljava/lang/String;
    .restart local v8       #type:Lcom/android/contacts/model/AccountType;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1148
    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v8           #type:Lcom/android/contacts/model/AccountType;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public isSweepActionEnabled()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 198
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    .line 202
    new-instance v1, Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    iget v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/contacts/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 204
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 205
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->hasPermanentMenuKey:Z

    .line 206
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .parameter "newConfig"

    .prologue
    const v10, 0x7f0900bc

    const v9, 0x7f0900b8

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 419
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 421
    sget-object v4, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    const-string v5, "onConfigurationChanged"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 424
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v4, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getOrientation()I

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->hasPermanentMenuKey:Z

    if-nez v4, :cond_3

    .line 426
    invoke-direct {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->addActionBarMargin(Z)V

    .line 431
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 432
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0e0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 433
    .local v0, columnCount:I
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setColumnCount(I)V

    .line 443
    .end local v0           #columnCount:I
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v4, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v7, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 445
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 448
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v5, 0x7f09018a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 449
    .local v2, mNoLogs:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 450
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 451
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #mNoLogs:Landroid/widget/TextView;
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    :cond_2
    return-void

    .line 429
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/contacts/list/ContactTileListFragment;->addActionBarMargin(Z)V

    goto :goto_0

    .line 436
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v4, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 438
    .restart local v3       #res:Landroid/content/res/Resources;
    const v4, 0x7f0e0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 439
    .restart local v0       #columnCount:I
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setColumnCount(I)V

    goto :goto_1

    .line 454
    .end local v0           #columnCount:I
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v1, v0

    .line 1274
    :cond_0
    :goto_0
    return v1

    .line 1198
    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1201
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1202
    if-eqz v0, :cond_0

    .line 1203
    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->copyToDialingScreen(Landroid/net/Uri;)V

    goto :goto_0

    .line 1207
    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1211
    :sswitch_3
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1212
    :catch_0
    move-exception v2

    .line 1213
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0125

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1215
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1220
    :sswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1221
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1222
    const-string v3, "CONTACT_URI"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1223
    const-string v0, "mode"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1224
    const-string v0, "direct_launch"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1225
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1228
    :sswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1231
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1233
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/list/ContactTileListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 1234
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1236
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isBlackListContact"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1239
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->shouldShowAddToRejectListTips(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1240
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v4, v5, v2, v0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 1242
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v3, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v4, v2, v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    goto/16 :goto_0

    .line 1248
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1251
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1255
    :sswitch_8
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1256
    :catch_1
    move-exception v2

    .line 1257
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d024d

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1263
    :sswitch_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1264
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1265
    const-string v3, "CONTACT_URI"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1266
    const-string v0, "mode"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1267
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1270
    :sswitch_a
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1271
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->createLauncherShortcutWithContact()V

    goto/16 :goto_0

    .line 1196
    :sswitch_data_0
    .sparse-switch
        0x7f09039c -> :sswitch_4
        0x7f0903ba -> :sswitch_6
        0x7f0903bb -> :sswitch_7
        0x7f0903bc -> :sswitch_0
        0x7f0903bd -> :sswitch_2
        0x7f0903be -> :sswitch_3
        0x7f0903bf -> :sswitch_1
        0x7f0903c0 -> :sswitch_5
        0x7f0903c1 -> :sswitch_8
        0x7f0903c2 -> :sswitch_9
        0x7f0903c3 -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 214
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    const-string v1, "<<<<<<<<<<<<<<<<<<onCreate>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-nez p1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getCurrentScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mScreenOrientation:I

    .line 220
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->cleanupResouces()V

    .line 224
    return-void

    .line 218
    :cond_0
    const-string v0, "screenorientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mScreenOrientation:I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 928
    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 930
    check-cast p3, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 931
    if-nez p3, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    move-object/from16 v0, p3

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    .line 934
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileAdapter;->getStaredCount()I

    move-result v3

    .line 935
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    if-eqz v1, :cond_6

    move v2, v3

    .line 936
    :goto_1
    const/4 v1, 0x0

    .line 938
    if-lez v4, :cond_0

    if-eqz v3, :cond_2

    add-int/lit8 v5, v2, 0x1

    if-eq v4, v5, :cond_0

    .line 941
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    if-le v4, v2, :cond_4

    .line 942
    :cond_3
    const/4 v1, 0x1

    .line 944
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 945
    :cond_5
    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    const-string v2, "Cannot find the selected item"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 935
    :cond_6
    iget v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    div-int v2, v3, v1

    iget v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    rem-int v1, v3, v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    :goto_2
    add-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    .line 949
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 950
    const v3, 0x7f12000f

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 952
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    .line 953
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileView;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 954
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactTileView;->getPhoneNumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 955
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 956
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v8

    .line 957
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v9

    .line 959
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2, v6, v7}, Lcom/android/contacts/list/ContactTileAdapter;->getAccountName(J)Ljava/lang/String;

    move-result-object v6

    .line 961
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v7

    .line 963
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 968
    if-eqz v5, :cond_11

    if-eqz v8, :cond_11

    .line 969
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v10, 0x7f0d002d

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v2, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 970
    const v10, 0x7f0903bc

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 972
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v5, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v10, v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 974
    const/high16 v2, 0x1000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 975
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 976
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v11, "CURRENT_NETWORK"

    const/4 v12, 0x0

    invoke-static {v2, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 979
    const-string v11, "simnum"

    const/4 v12, 0x1

    if-ne v2, v12, :cond_d

    const/4 v2, 0x2

    :goto_3
    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 981
    :cond_9
    const v2, 0x7f0903bc

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 982
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 983
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/contacts/list/ContactTileListFragment;->isBlackListContact(J)Z

    move-result v2

    .line 984
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 986
    const v10, 0x7f0903c0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const v11, 0x7f0d03be

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 990
    :cond_a
    :goto_4
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 991
    invoke-virtual {v10, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 992
    const-string v11, "isBlackListContact"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 993
    const v2, 0x7f0903c0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v10

    if-eqz v8, :cond_f

    const-string v2, "primary.sim.account_name"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    :goto_5
    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1003
    :goto_6
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1005
    const v2, 0x7f0903c0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1009
    :cond_b
    if-eqz v9, :cond_12

    if-eqz v5, :cond_12

    .line 1010
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    const-string v11, "smsto"

    const-string v12, ","

    const-string v13, "P"

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ";"

    const-string v14, "W"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1012
    const v10, 0x7f0903bd

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1015
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1017
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1018
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1019
    const/16 v4, 0xa

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1020
    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1023
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1025
    const-string v4, "sms_body"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    :goto_7
    if-eqz v5, :cond_13

    if-eqz v8, :cond_13

    .line 1032
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1033
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1034
    const v4, 0x7f0903bf

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1040
    :goto_8
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactTileView;->getEmailAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    if-eqz v2, :cond_14

    if-nez v7, :cond_14

    .line 1042
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    const-string v10, "mailto"

    const/4 v11, 0x0

    invoke-static {v10, v2, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1044
    const/high16 v2, 0x1000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1045
    const v2, 0x7f0903be

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1052
    :goto_9
    if-eqz v9, :cond_15

    if-eqz v5, :cond_15

    if-nez v7, :cond_15

    .line 1053
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1054
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1055
    const v4, 0x7f09039c

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1061
    :goto_a
    const-string v2, "primary.sim.account_name"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "primary.sim2.account_name"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1064
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v1}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v2

    .line 1066
    if-nez v1, :cond_16

    .line 1067
    const v1, 0x7f0903ba

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1068
    const v1, 0x7f0903bb

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1080
    :goto_b
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileView;->getContactLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->isContactWritable(Ljava/lang/String;)Z

    move-result v1

    .line 1081
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileView;->isUserProfile()Z

    move-result v2

    .line 1084
    if-eqz v1, :cond_18

    if-nez v2, :cond_18

    if-eqz v9, :cond_18

    if-nez v7, :cond_18

    .line 1085
    const v4, 0x7f09039c

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1086
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1087
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1088
    const v5, 0x7f09039c

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1094
    :goto_c
    if-eqz v1, :cond_19

    if-nez v2, :cond_19

    if-nez v7, :cond_19

    .line 1095
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactTileView;->getLookupKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1097
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1098
    const-string v6, "text/x-vcard"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1102
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0d024d

    invoke-static {v4, v5, v6}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v4

    .line 1103
    const v5, 0x7f0903c1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1109
    :goto_d
    if-eqz v1, :cond_1a

    if-nez v2, :cond_1a

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMobilePrintSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1111
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1112
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1113
    const v2, 0x7f0903c2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1118
    :goto_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_AddExtMobilePrint"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Epson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1119
    const v1, 0x7f0903c2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1123
    :cond_c
    const v1, 0x7f0903c3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 979
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 987
    :cond_e
    if-eqz v2, :cond_a

    .line 988
    const v10, 0x7f0903c0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const v11, 0x7f0d0329

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 993
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 996
    :cond_10
    const v2, 0x7f0903c0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 999
    :cond_11
    const v2, 0x7f0903bc

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1000
    const v2, 0x7f0903c0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1027
    :cond_12
    const v2, 0x7f0903bd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1036
    :cond_13
    const v2, 0x7f0903bf

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    .line 1047
    :cond_14
    const v2, 0x7f0903be

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 1057
    :cond_15
    const v2, 0x7f09039c

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 1070
    :cond_16
    const v1, 0x7f0903bb

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1071
    const v1, 0x7f0903ba

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 1074
    :cond_17
    const v1, 0x7f0903ba

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1075
    const v1, 0x7f0903bb

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 1090
    :cond_18
    const v4, 0x7f09039c

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 1105
    :cond_19
    const v4, 0x7f0903c1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 1115
    :cond_1a
    const v1, 0x7f0903c2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_e
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 230
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {v0}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    .line 234
    :cond_0
    const v0, 0x7f040060

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/contacts/list/ContactTileListFragment;->inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 268
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->cleanupResouces()V

    .line 269
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 244
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 247
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 248
    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_1

    .line 252
    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    if-eqz v0, :cond_2

    .line 255
    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 258
    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 261
    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 263
    :cond_4
    return-void
.end method

.method public onItemChosen(IILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1153
    .line 1155
    if-nez p3, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1159
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1162
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1163
    const-string v1, "withSpecialChar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1164
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSelectorCancelled()V
    .locals 0

    .prologue
    .line 1174
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 411
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    const-string v1, "VoLTEStateTracker : stopTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {v0}, Lcom/android/contacts/VoLTEStateTracker;->stopTracking()V

    .line 415
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/high16 v3, 0x100

    .line 378
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 380
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setVoLTEEnabled(Z)V

    .line 383
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    const-string v1, "VoLTEStateTracker : startTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/contacts/list/ContactTileListFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/ContactTileListFragment$1;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/VoLTEStateTracker;->startTracking(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 394
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/list/ContactTileListFragment;->callPressed:Z

    .line 395
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 402
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    const-string v0, "screenorientation"

    iget v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mScreenOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "selectedfavorite"

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 344
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 358
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 360
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->screenOrientationChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    sget v3, Lcom/android/contacts/list/ContactTileListFragment;->LOADER_CONTACTS:I

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 366
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 367
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0e0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 368
    .local v0, columnCount:I
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setColumnCount(I)V

    .line 369
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "favorite_strquent_listview_state"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    .line 370
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    .line 371
    return-void

    .line 363
    .end local v0           #columnCount:I
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    sget v3, Lcom/android/contacts/list/ContactTileListFragment;->LOADER_CONTACTS:I

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1356
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v0, :cond_0

    .line 1357
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFocusable(Z)V

    .line 1359
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestFocus()Z

    .line 1360
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->smoothScrollToPosition(I)V

    .line 1363
    :cond_0
    return-void
.end method

.method public selectFirstUri()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 642
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setSelectedUri(Landroid/net/Uri;)V

    .line 643
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 645
    :cond_0
    return-void
.end method

.method public setChangingSplitRatioMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mChagingSplitRatioMode:Z

    if-eq v0, p1, :cond_1

    .line 784
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mChagingSplitRatioMode:Z

    .line 785
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mChagingSplitRatioMode:Z

    if-eqz v0, :cond_0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->setChangingSplitRatioMode(Z)V

    .line 791
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 793
    :cond_1
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .parameter "columnCount"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->setColumnCount(I)V

    .line 464
    return-void
.end method

.method public setDataChangeListener(Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    .line 588
    return-void
.end method

.method public setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V
    .locals 2
    .parameter "displayType"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    .line 468
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 469
    return-void
.end method

.method public setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 584
    return-void
.end method

.method public setSelectedFavoriteUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 648
    if-eqz p1, :cond_0

    .line 649
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    .line 650
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 651
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setSelectedUri(Landroid/net/Uri;)V

    .line 652
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 654
    :cond_0
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    .line 626
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setSelectionVisible(Z)V

    .line 629
    :cond_0
    return-void
.end method

.method public setStreListViewState(Z)V
    .locals 0
    .parameter "bListViewState"

    .prologue
    .line 751
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    .line 752
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    .line 753
    return-void
.end method

.method protected final setSweepActionBarCallBack(Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;)V
    .locals 0
    .parameter "sweepActionBarCallBack"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 864
    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 798
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionEnabled:Z

    .line 799
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->updateSweepActionFeasibility()V

    .line 809
    return-void
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0
    .parameter "sweepActionListener"

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 869
    return-void
.end method
