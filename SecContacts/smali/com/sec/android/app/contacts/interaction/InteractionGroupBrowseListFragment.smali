.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
.super Landroid/app/Fragment;
.source "InteractionGroupBrowseListFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    }
.end annotation


# static fields
.field static final GROUP_LIST_PROJECTION:[Ljava/lang/String;

.field static final GROUP_MEMBER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mActionCode:I

.field private mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

.field private mAddAccountsView:Landroid/view/View;

.field private mCallingPackage:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private mHugeFontSize:I

.field private mIsGroupConference:Z

.field private mIsHugeFontMode:Z

.field private mIsSendingMSG:Z

.field private mIsTwoPaneMode:Z

.field private mLimitedCount:I

.field private mList:Landroid/widget/ExpandableListView;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mRootView:Landroid/view/View;

.field private mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mSelectionToScreenRequested:Z

.field private mSyncStatusObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "system_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    .line 125
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 93
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsGroupConference:Z

    .line 109
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsSendingMSG:Z

    .line 157
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectionToScreenRequested:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectionToScreenRequested:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsHugeFontMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mHugeFontSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method private registerSyncStatusObserver()V
    .locals 4

    .prologue
    .line 185
    const-string v1, "content://com.android.contacts/check_photo_updates"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 186
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    return-void
.end method

.method private unregisterSyncStatusObserver()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 2
    .parameter "builder"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    const-string v0, "requesting_package"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 936
    .end local p1
    :cond_0
    return-object p1
.end method

.method public getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1161
    if-nez p2, :cond_1

    .line 1162
    const/4 v1, 0x0

    .line 1188
    :cond_0
    :goto_0
    return-object v1

    .line 1165
    :cond_1
    const-string v2, "title"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1166
    .local v1, title:Ljava/lang/String;
    const-string v2, "system_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, systemId:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1169
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1173
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1174
    const v2, 0x7f0d0099

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1183
    :cond_3
    :goto_1
    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1185
    const v2, 0x7f0d0149

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1175
    :cond_4
    const-string v2, "ICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1176
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1177
    const v2, 0x7f0d0285

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1180
    :cond_5
    const v2, 0x7f0d0284

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 214
    packed-switch p1, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 217
    :pswitch_0
    if-ne p2, v5, :cond_0

    .line 218
    const-string v2, "InteractionGroupBrowseListFragment"

    const-string v3, "[Interaction]onActivityResult REQUEST_GROUP"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v2, "result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 220
    .local v0, rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "result"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 222
    if-nez v0, :cond_1

    .line 223
    const-string v2, "InteractionGroupBrowseListFragment"

    const-string v3, "[Interaction]rtnData null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 228
    .local v1, subTab:Landroid/app/Activity;
    const-string v2, "InteractionGroupBrowseListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Interaction]sendNum subTab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v1, :cond_2

    .line 231
    const-string v2, "InteractionGroupBrowseListFragment"

    const-string v3, "[Interaction]sendNum subTab != null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v1, v5, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 234
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 1231
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1232
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 1234
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    .line 1235
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 1236
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->registerSyncStatusObserver()V

    .line 1238
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z

    .line 1239
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 15
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 943
    iget-object v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v13, v0, v1}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v10

    .line 945
    .local v10, c:Landroid/database/Cursor;
    const/4 v13, 0x3

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 946
    .local v3, accountType:Ljava/lang/String;
    const/4 v13, 0x2

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 947
    .local v4, accountName:Ljava/lang/String;
    const/4 v13, 0x4

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 949
    .local v5, dataSet:Ljava/lang/String;
    const-string v13, "xxx"

    const/4 v14, 0x5

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 950
    const/4 v13, 0x0

    .line 974
    :goto_0
    return v13

    .line 953
    :cond_0
    iget-object v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCount(I)I

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.google"

    if-eq v13, v3, :cond_1

    .line 956
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 957
    .local v6, groupId:J
    const/4 v13, 0x1

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 958
    .local v8, title:Ljava/lang/String;
    const/4 v13, 0x5

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 959
    .local v9, systemId:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v12, intent:Landroid/content/Intent;
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 962
    .local v2, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v11

    .line 964
    .local v11, groupType:I
    const-string v13, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    const-string v13, "GroupInfo"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 966
    const-string v13, "actionCode"

    iget v14, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mActionCode:I

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 967
    const-string v13, "maxRecipientCount"

    iget v14, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mLimitedCount:I

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 968
    const-string v13, "existingRecipientCount"

    iget v14, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCurrentCount:I

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 969
    const-string v13, "SelectMode"

    invoke-virtual {v12, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 970
    const-string v13, "toolitem"

    iget-object v14, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v14}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 971
    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 974
    .end local v2           #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v6           #groupId:J
    .end local v8           #title:Ljava/lang/String;
    .end local v9           #systemId:Ljava/lang/String;
    .end local v11           #groupType:I
    .end local v12           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 196
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1197
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v3, "onCreateView"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    if-eqz p3, :cond_1

    .line 1200
    const-string v0, "groupInfo"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1201
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    .line 1204
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 1205
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 1207
    :cond_0
    const-string v0, "request"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 1209
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCallingPackage:Ljava/lang/String;

    .line 1211
    const v0, 0x7f040104

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRootView:Landroid/view/View;

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    .line 1214
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1218
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1224
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 1226
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v0

    :cond_2
    move v0, v2

    .line 1224
    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1243
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 1244
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->cancelQuery()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$1400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 1245
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->closeAllCursor()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$1500(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 1247
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->unregisterSyncStatusObserver()V

    .line 1248
    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 1249
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 14
    .parameter "l"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 979
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v12

    move/from16 v0, p3

    invoke-interface {v12, v0}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    .line 981
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x3

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 982
    .local v2, accountType:Ljava/lang/String;
    const/4 v12, 0x2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, accountName:Ljava/lang/String;
    const/4 v12, 0x4

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 985
    .local v4, dataSet:Ljava/lang/String;
    const-string v12, "xxx"

    const/4 v13, 0x5

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 986
    const/4 v12, 0x0

    .line 1017
    :goto_0
    return v12

    .line 989
    :cond_0
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCount(I)I

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "com.google"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "com.android.nttdocomo"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 994
    :cond_1
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 995
    .local v5, groupId:J
    const/4 v12, 0x1

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 996
    .local v7, title:Ljava/lang/String;
    const/4 v12, 0x5

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 997
    .local v8, systemId:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v12, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 998
    .local v11, intent:Landroid/content/Intent;
    new-instance v1, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1000
    .local v1, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v10

    .line 1002
    .local v10, groupType:I
    const-string v12, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const-string v12, "GroupInfo"

    invoke-virtual {v11, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1004
    const-string v12, "actionCode"

    iget v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mActionCode:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1005
    const-string v12, "maxRecipientCount"

    iget v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mLimitedCount:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1006
    const-string v12, "existingRecipientCount"

    iget v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCurrentCount:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    const-string v12, "SelectMode"

    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1008
    const-string v12, "isGroupConference"

    iget-boolean v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsGroupConference:Z

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1010
    const-string v12, "FromMMS"

    iget-boolean v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsSendingMSG:Z

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1011
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz v12, :cond_2

    .line 1012
    const-string v12, "toolitem"

    iget-object v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v13}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1014
    :cond_2
    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1017
    .end local v1           #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v5           #groupId:J
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #systemId:Ljava/lang/String;
    .end local v10           #groupType:I
    .end local v11           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 202
    const-string v4, "InteractionGroupBrowseListFragment"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 206
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "huge_font"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, flagHugeFont:I
    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsHugeFontMode:Z

    .line 208
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mHugeFontSize:I

    .line 209
    return-void

    :cond_0
    move v2, v3

    .line 207
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1261
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1262
    const-string v0, "groupInfo"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1263
    const-string v0, "request"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1264
    return-void
.end method

.method protected requestSelectionToScreen()V
    .locals 3

    .prologue
    .line 1253
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroupPosition()I

    move-result v0

    .line 1254
    .local v0, selectedPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1257
    :cond_0
    return-void
.end method

.method public setAddAccountsVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1270
    :cond_0
    return-void

    .line 1268
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 1302
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 0
    .parameter "ActionCode"
    .parameter "LimitedCount"
    .parameter "CurrentCount"

    .prologue
    .line 1274
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mActionCode:I

    .line 1275
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mLimitedCount:I

    .line 1276
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCurrentCount:I

    .line 1277
    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0
    .parameter "FromMMS"

    .prologue
    .line 1286
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsSendingMSG:Z

    .line 1287
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 1305
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1306
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1308
    :cond_0
    return-void
.end method

.method public setVTConferenceMode(Z)V
    .locals 0
    .parameter "isConferenceMode"

    .prologue
    .line 1280
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsGroupConference:Z

    .line 1281
    return-void
.end method
