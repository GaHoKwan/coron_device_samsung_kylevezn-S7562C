.class public Lcom/android/contacts/editor/RawContactEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactEditorView.java"


# static fields
.field public static mAAB_profile:Z


# instance fields
.field private final SIM_ONE:I

.field private final SIM_ZERO:I

.field private isMMSAvailable:Z

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field mAccountType:Lcom/android/contacts/model/AccountType;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mAddFieldButton:Landroid/widget/Button;

.field private mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

.field private mAlerttoneKind:Lcom/android/contacts/model/DataKind;

.field private mAlerttoneVisible:Z

.field private mAutoAddToDefaultGroup:Z

.field private mAutoAddToICEGroup:Z

.field private mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

.field private mFields:Landroid/view/ViewGroup;

.field private mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

.field private mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mGroupVisible:Z

.field private mHasPhone:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsVibrator:Z

.field private mName:Lcom/android/contacts/editor/StructuredNameEditorView;

.field private mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

.field private mPhoneticNameAdded:Z

.field private mRawContactId:J

.field private mRelationVisible:Z

.field private mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

.field private mRingtoneKind:Lcom/android/contacts/model/DataKind;

.field private mRingtoneVisible:Z

.field private final mRunWhenWindowFocused:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

.field private mVibrationKind:Lcom/android/contacts/model/DataKind;

.field private mVibrationVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 162
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 122
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 123
    iput-boolean v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup:Z

    .line 131
    iput-boolean v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneVisible:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationVisible:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    .line 152
    iput v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->SIM_ZERO:I

    .line 153
    iput v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->SIM_ONE:I

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 122
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 123
    iput-boolean v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup:Z

    .line 131
    iput-boolean v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneVisible:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationVisible:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    .line 152
    iput v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->SIM_ZERO:I

    .line 153
    iput v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->SIM_ONE:I

    .line 167
    return-void
.end method

.method private IsNeedlessAddFieldButton()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1208
    move v1, v2

    move v3, v2

    .line 1209
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1210
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1211
    instance-of v4, v0, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v4, :cond_0

    .line 1212
    check-cast v0, Lcom/android/contacts/editor/KindSectionView;

    .line 1215
    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1209
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1218
    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1220
    iget-boolean v5, v4, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 1223
    :cond_2
    const-string v5, "#displayName"

    iget-object v6, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1227
    const-string v5, "#phoneticName"

    iget-object v6, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1232
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1240
    const-string v0, "#phoneticName"

    iget-object v5, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Contact_DisableTriggerInternetCall"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1247
    const-string v0, "vnd.android.cursor.item/sip_address"

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1255
    :cond_6
    if-nez v3, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/RawContactEditorView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/editor/PhoneticNameEditorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/RawContactEditorView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/RawContactEditorView;->postWhenWindowFocused(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/RawContactEditorView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/RawContactEditorView;->runWhenWindowFocused(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addToDefaultGroupIfNeeded()V
    .locals 12

    .prologue
    .line 842
    iget-boolean v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-nez v8, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    const/4 v4, 0x0

    .line 848
    .local v4, hasGroupMembership:Z
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 849
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v2, :cond_3

    .line 850
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 851
    .local v7, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v8, "data1"

    invoke-virtual {v7, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 852
    .local v6, id:Ljava/lang/Long;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 853
    const/4 v4, 0x1

    .line 859
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #id:Ljava/lang/Long;
    .end local v7           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    if-nez v4, :cond_0

    .line 860
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getDefaultGroupId()J

    move-result-wide v0

    .line 861
    .local v0, defaultGroupId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 862
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v8, v9}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 863
    .local v3, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v8, "data1"

    invoke-virtual {v3, v8, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private addToICEGroupIfNeeded()V
    .locals 5

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-nez v0, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 878
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 879
    if-eqz v2, :cond_3

    const-string v3, "ICE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 880
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v3, v4}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 881
    if-eqz v3, :cond_3

    .line 882
    const-string v4, "data1"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    .line 884
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 885
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 886
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/editor/RawContactEditorView;->updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 894
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup:Z

    goto :goto_0

    .line 892
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1
.end method

.method private getDefaultGroupId()J
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 902
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 903
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 904
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 905
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 908
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 909
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 910
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v5, v4}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 913
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 919
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private postWhenWindowFocused(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1191
    new-instance v0, Lcom/android/contacts/editor/RawContactEditorView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/editor/RawContactEditorView$3;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1197
    return-void
.end method

.method private runWhenWindowFocused(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1179
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1184
    :goto_0
    return-void

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setOneNameFieldLayout()V
    .locals 2

    .prologue
    .line 810
    const v1, 0x7f090344

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 812
    .local v0, expansiondelete_containser:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 813
    return-void
.end method

.method private setSIMLayout(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 7
    .parameter "state"
    .parameter "type"

    .prologue
    const/16 v6, 0x8

    .line 732
    const v4, 0x7f090343

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 733
    .local v2, namelabel:Landroid/widget/TextView;
    const v4, 0x7f090344

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 734
    .local v0, expansiondelete_containser:Landroid/view/View;
    const v4, 0x7f0902ee

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 736
    .local v3, stubphoto:Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 738
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 741
    :cond_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 743
    .local v1, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 744
    iget-object v4, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 745
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v4, p1, p2, v5}, Lcom/android/contacts/model/EntityModifier;->ensureKindExistsSIMPhone(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 752
    :goto_0
    iget-object v4, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 754
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 774
    :cond_1
    :goto_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 775
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 776
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 777
    return-void

    .line 747
    :cond_2
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0

    .line 759
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_4

    .line 760
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v4, p1, p2, v5}, Lcom/android/contacts/model/EntityModifier;->ensureKindExistsSIMPhone(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 767
    :goto_2
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 769
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_1

    .line 762
    :cond_4
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_2
.end method

.method private setSIMLayout2(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 7
    .parameter "state"
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/16 v6, 0x8

    .line 780
    const v4, 0x7f090343

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 781
    .local v2, namelabel:Landroid/widget/TextView;
    const v4, 0x7f090344

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 782
    .local v0, expansiondelete_containser:Landroid/view/View;
    const v4, 0x7f0902ee

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 784
    .local v3, stubphoto:Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 786
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 789
    :cond_0
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 794
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 796
    .local v1, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 798
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 802
    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 803
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 804
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 805
    return-void
.end method

.method private showAddInformationPopupWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1040
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1043
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 1046
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1047
    instance-of v4, v0, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v4, :cond_0

    .line 1048
    check-cast v0, Lcom/android/contacts/editor/KindSectionView;

    .line 1051
    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1045
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1054
    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1056
    iget-boolean v5, v4, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 1059
    :cond_2
    const-string v5, "#displayName"

    iget-object v6, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1063
    const-string v5, "#phoneticName"

    iget-object v6, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1067
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1073
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1075
    const-string v5, "#phoneticName"

    iget-object v6, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1080
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    if-eqz v5, :cond_5

    const-string v5, "vnd.android.cursor.item/phone_v2"

    iget-object v6, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1086
    :cond_5
    sget-boolean v5, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    if-eqz v5, :cond_6

    const-string v5, "vnd.android.cursor.item/phone_v2"

    iget-object v6, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1090
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_DisableTriggerInternetCall"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1092
    const-string v5, "vnd.android.cursor.item/sip_address"

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1097
    :cond_7
    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1103
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v7, :cond_a

    .line 1156
    :cond_9
    :goto_2
    return-void

    .line 1107
    :cond_a
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f040153

    invoke-direct {v0, v1, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1109
    new-instance v1, Lcom/android/contacts/editor/RawContactEditorView$2;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/contacts/editor/RawContactEditorView$2;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V

    .line 1149
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d01be

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1152
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1153
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ContactEditorActivity;

    .line 1154
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1155
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_2
.end method

.method private updatePhoneticNameVisibility()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1014
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1017
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    :goto_0
    return-void

    .line 1022
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhoneticNameEditorView;->hasData()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    if-eqz v0, :cond_2

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 723
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method public getAlerttoneEditor()Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    return-object v0
.end method

.method public getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    return-object v0
.end method

.method public getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 1032
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public getRingtoneEditor()Lcom/sec/android/app/contacts/editor/RingtoneEditorView;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    return-object v0
.end method

.method public getSelectedGroupNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView;->getSelectedGroupNames()Ljava/util/List;

    move-result-object v0

    .line 1265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVibrationEditor()Lcom/sec/android/app/contacts/editor/VibrationEditorView;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    return-object v0
.end method

.method public getVibrationVisibility()Z
    .locals 1

    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationVisible:Z

    return v0
.end method

.method public isPhoneticNameAdded()Z
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    return v0
.end method

.method public mAutoAddToICEGroup(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 832
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup:Z

    .line 833
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 225
    const v0, 0x7f0902f1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    .line 226
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/LabeledEditorView;->setDeletable(Z)V

    .line 228
    const v0, 0x7f0902f2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhoneticNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    .line 229
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/LabeledEditorView;->setDeletable(Z)V

    .line 231
    const v0, 0x7f0902f3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    .line 233
    const v0, 0x7f0901e2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 234
    const v0, 0x7f090257

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 235
    const v0, 0x7f090258

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f0902f4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    .line 239
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/editor/RawContactEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/RawContactEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHasPhone:Z

    .line 250
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVibrator(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsVibrator:Z

    .line 252
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->isMMSAvailable:Z

    .line 257
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 1165
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 1166
    if-eqz p1, :cond_1

    .line 1167
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1168
    .local v1, r:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1170
    .end local v1           #r:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1172
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setAccountInfo(Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "accountType"

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountType:Lcom/android/contacts/model/AccountType;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountType:Lcom/android/contacts/model/AccountType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1296
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountType:Lcom/android/contacts/model/AccountType;

    .line 1300
    :cond_0
    return-void
.end method

.method public setAlerttone(Ljava/lang/String;)V
    .locals 1
    .parameter "alerttone"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->setAlerttone(Ljava/lang/String;)V

    .line 970
    :cond_0
    return-void
.end method

.method public setAlerttoneVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 957
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneVisible:Z

    .line 958
    return-void
.end method

.method public setAutoAddToDefaultGroup(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 828
    return-void
.end method

.method public setDateFormat()V
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->rebuildFromState()V

    .line 1001
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    .line 174
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {v2, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEnabled(Z)V

    .line 182
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    if-eqz v3, :cond_2

    .line 183
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEnabled(Z)V

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 187
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 188
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 189
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_4

    .line 194
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 198
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    if-eqz v3, :cond_5

    .line 199
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setEnabled(Z)V

    .line 203
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    if-eqz v3, :cond_6

    .line 204
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->setEnabled(Z)V

    .line 208
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    if-eqz v3, :cond_7

    .line 209
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->setEnabled(Z)V

    .line 212
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    if-eqz v3, :cond_8

    .line 213
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 216
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 217
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 1
    .parameter "groupMetaData"

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    .line 819
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 820
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToICEGroupIfNeeded()V

    .line 821
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 824
    :cond_0
    return-void
.end method

.method public setGroupVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1005
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    .line 1006
    return-void
.end method

.method public setPhoneticNameAdded(Z)V
    .locals 0
    .parameter "phoneticNameAdded"

    .prologue
    .line 1205
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    .line 1206
    return-void
.end method

.method public setRelationVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1010
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    .line 1011
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 1
    .parameter "ringtone"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setRingtone(Ljava/lang/String;)V

    .line 947
    :cond_0
    return-void
.end method

.method public setRintoneVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 938
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    .line 939
    return-void
.end method

.method public setSelectedGroupNames(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1269
    .local p1, selectedGroupNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setSelectedGroupNames(Ljava/util/ArrayList;)V

    .line 1272
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 26
    .parameter "state"
    .parameter "type"
    .parameter "vig"
    .parameter "isProfile"

    .prologue
    .line 268
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 274
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v6, v7}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 279
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v22

    .line 284
    .local v22, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 285
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/RawContactEditorView;->mAccountType:Lcom/android/contacts/model/AccountType;

    .line 288
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    .line 291
    if-eqz p4, :cond_e

    .line 293
    const-string v3, "account_name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, accountName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 296
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v6, 0x7f0d0228

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 304
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    .line 383
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->setOneNameFieldLayout()V

    .line 391
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "vnd.sec.contact.sim"

    const-string v6, "account_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "vnd.sec.contact.sim2"

    const-string v6, "account_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 395
    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/android/contacts/editor/RawContactEditorView;->setSIMLayout(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    .line 402
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "vnd.sec.contact.sim2"

    const-string v6, "account_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 404
    invoke-direct/range {p0 .. p2}, Lcom/android/contacts/editor/RawContactEditorView;->setSIMLayout2(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    .line 410
    :cond_7
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 412
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setHasPhotoEditor(Z)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEnabled(Z)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEnabled(Z)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 428
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    if-eqz v3, :cond_8

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040111

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setKind(Lcom/android/contacts/model/DataKind;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 443
    :cond_8
    const-string v3, "vnd.android.cursor.item/ringtone"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 444
    const-string v3, "vnd.android.cursor.item/ringtone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneKind:Lcom/android/contacts/model/DataKind;

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneKind:Lcom/android/contacts/model/DataKind;

    if-eqz v3, :cond_9

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040115

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setEnabled(Z)V

    .line 453
    :cond_9
    const-string v3, "vnd.android.cursor.item/alerttone"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 454
    const-string v3, "vnd.android.cursor.item/alerttone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneKind:Lcom/android/contacts/model/DataKind;

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneKind:Lcom/android/contacts/model/DataKind;

    if-eqz v3, :cond_a

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040110

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->setEnabled(Z)V

    .line 463
    :cond_a
    const-string v3, "vnd.android.cursor.item/vibration"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 464
    const-string v3, "vnd.android.cursor.item/vibration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationKind:Lcom/android/contacts/model/DataKind;

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationKind:Lcom/android/contacts/model/DataKind;

    if-eqz v3, :cond_b

    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040116

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->setEnabled(Z)V

    .line 473
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/DataKind;

    .line 475
    .local v4, kind:Lcom/android/contacts/model/DataKind;
    iget-boolean v3, v4, Lcom/android/contacts/model/DataKind;->editable:Z

    if-eqz v3, :cond_c

    .line 477
    iget-object v0, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 478
    .local v19, mimeType:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 480
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 481
    .local v5, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string v6, "#displayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const-string v6, "#phoneticName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto :goto_4

    .line 299
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 300
    .local v10, accountType:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0229

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v10, v8, v23

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 310
    .end local v9           #accountName:Ljava/lang/String;
    .end local v10           #accountType:Ljava/lang/CharSequence;
    :cond_e
    const-string v3, "account_name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 311
    .restart local v9       #accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 312
    .restart local v10       #accountType:Ljava/lang/CharSequence;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f0d014b

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 315
    :cond_f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x7f0d02a5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d02a6

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v8, v23

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :goto_5
    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d014b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 322
    :cond_10
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 324
    :cond_11
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 327
    :cond_12
    const-string v3, "vnd.sec.contact.agg.account_type"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 334
    :cond_13
    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 337
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x7f0d01a2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v9, v8, v23

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 347
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 353
    :cond_16
    const-string v3, "primary.sim.account_name"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 354
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 358
    :cond_17
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 365
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 369
    :cond_19
    const-string v3, "primary.sim2.account_name"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 379
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x7f0d01a1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v10, v8, v23

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 412
    .end local v10           #accountType:Ljava/lang/CharSequence;
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 487
    .restart local v4       #kind:Lcom/android/contacts/model/DataKind;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v19       #mimeType:Ljava/lang/String;
    :cond_1c
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 489
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 490
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto/16 :goto_4

    .line 491
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_1d
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    if-eqz v3, :cond_c

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/contacts/editor/GroupMembershipView;->setState(Lcom/android/contacts/model/EntityDelta;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 496
    :cond_1e
    const-string v3, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 497
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    if-eqz v3, :cond_c

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040112

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/editor/KindSectionView;

    .line 500
    .local v21, section:Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 501
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 503
    .end local v21           #section:Lcom/android/contacts/editor/KindSectionView;
    :cond_1f
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 543
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040112

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/editor/KindSectionView;

    .line 548
    .restart local v21       #section:Lcom/android/contacts/editor/KindSectionView;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_27

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 551
    .restart local v10       #accountType:Ljava/lang/CharSequence;
    new-instance v11, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data5"

    const v6, 0x7f0d0059

    const/16 v7, 0x2001

    invoke-direct {v11, v3, v6, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 552
    .local v11, department:Lcom/android/contacts/model/AccountType$EditField;
    new-instance v18, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data6"

    const v6, 0x7f0d005a

    const/16 v7, 0x2001

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v6, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 553
    .local v18, jobDescription:Lcom/android/contacts/model/AccountType$EditField;
    new-instance v20, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data9"

    const v6, 0x7f0d005b

    const/16 v7, 0x2001

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v6, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 555
    .local v20, officeLocation:Lcom/android/contacts/model/AccountType$EditField;
    if-nez p4, :cond_20

    const-string v3, "docomo"

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 556
    :cond_20
    const/4 v14, 0x0

    .line 557
    .local v14, isExistDepartment:Z
    const/4 v15, 0x0

    .line 558
    .local v15, isExistJobDescription:Z
    const/16 v16, 0x0

    .line 560
    .local v16, isExistOfficeLocation:Z
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 562
    .local v17, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditField;>;"
    :cond_21
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 563
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/AccountType$EditField;

    .line 564
    .local v12, editField:Lcom/android/contacts/model/AccountType$EditField;
    iget-object v3, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    iget-object v6, v11, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 565
    const/4 v14, 0x1

    .line 566
    :cond_22
    iget-object v3, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 567
    const/4 v15, 0x1

    .line 568
    :cond_23
    iget-object v3, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 569
    const/16 v16, 0x1

    goto :goto_6

    .line 571
    .end local v12           #editField:Lcom/android/contacts/model/AccountType$EditField;
    :cond_24
    if-nez v14, :cond_25

    .line 572
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_25
    if-nez v15, :cond_26

    .line 574
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_26
    if-nez v16, :cond_27

    .line 576
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v10           #accountType:Ljava/lang/CharSequence;
    .end local v11           #department:Lcom/android/contacts/model/AccountType$EditField;
    .end local v14           #isExistDepartment:Z
    .end local v15           #isExistJobDescription:Z
    .end local v16           #isExistOfficeLocation:Z
    .end local v17           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditField;>;"
    .end local v18           #jobDescription:Lcom/android/contacts/model/AccountType$EditField;
    .end local v20           #officeLocation:Lcom/android/contacts/model/AccountType$EditField;
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 592
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 593
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 594
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/editor/KindSectionView;->removeLabelSection()V

    .line 596
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 578
    .restart local v10       #accountType:Ljava/lang/CharSequence;
    .restart local v11       #department:Lcom/android/contacts/model/AccountType$EditField;
    .restart local v18       #jobDescription:Lcom/android/contacts/model/AccountType$EditField;
    .restart local v20       #officeLocation:Lcom/android/contacts/model/AccountType$EditField;
    :cond_29
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 579
    .restart local v17       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditField;>;"
    :cond_2a
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 580
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/AccountType$EditField;

    .line 581
    .restart local v12       #editField:Lcom/android/contacts/model/AccountType$EditField;
    iget-object v3, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    iget-object v6, v11, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 582
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    .line 583
    :cond_2b
    iget-object v3, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 584
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    .line 585
    :cond_2c
    iget-object v3, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 586
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 597
    .end local v10           #accountType:Ljava/lang/CharSequence;
    .end local v11           #department:Lcom/android/contacts/model/AccountType$EditField;
    .end local v12           #editField:Lcom/android/contacts/model/AccountType$EditField;
    .end local v17           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditField;>;"
    .end local v18           #jobDescription:Lcom/android/contacts/model/AccountType$EditField;
    .end local v20           #officeLocation:Lcom/android/contacts/model/AccountType$EditField;
    .end local v21           #section:Lcom/android/contacts/editor/KindSectionView;
    :cond_2d
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 598
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040112

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/KindSectionView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v4, v0, v6, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/activities/ContactEditorActivity;

    iget-boolean v3, v3, Lcom/android/contacts/activities/ContactEditorActivity;->mIsRecreatedInstance:Z

    if-nez v3, :cond_2e

    .line 607
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/contacts/activities/ContactEditorActivity;->mIsRecreatedInstance:Z

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/KindSectionView;->removeLabelSection()V

    .line 610
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 611
    :cond_2f
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 612
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040112

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/editor/KindSectionView;

    .line 615
    .restart local v21       #section:Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 616
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 617
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v3, "com.android.exchange"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 618
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/editor/KindSectionView;->removeEditorView()V

    .line 620
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 621
    .end local v21           #section:Lcom/android/contacts/editor/KindSectionView;
    :cond_31
    const-string v3, "vnd.android.cursor.item/ringtone"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mHasPhone:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    if-eqz v3, :cond_c

    .line 623
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 624
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 627
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_32
    const-string v3, "vnd.android.cursor.item/vibration"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mHasPhone:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mIsVibrator:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationVisible:Z

    if-eqz v3, :cond_c

    .line 629
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 630
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 633
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_33
    const-string v3, "vnd.android.cursor.item/alerttone"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->isMMSAvailable:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneVisible:Z

    if-eqz v3, :cond_c

    .line 635
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 636
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 640
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_34
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 641
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040112

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/editor/KindSectionView;

    .line 644
    .restart local v21       #section:Lcom/android/contacts/editor/KindSectionView;
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v3, :cond_41

    if-eqz p4, :cond_41

    .line 645
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_35
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_36
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_37
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_38
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_39
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_3a
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_3b
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_3c
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_3d
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_3e
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_3f
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_40
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 672
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 657
    :cond_41
    const-string v3, "com.android.nttdocomo"

    const-string v6, "account_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 658
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 659
    :cond_42
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 660
    :cond_43
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 661
    :cond_44
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 662
    :cond_45
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 663
    :cond_46
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 664
    :cond_47
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 665
    :cond_48
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 666
    :cond_49
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 667
    :cond_4a
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 668
    :cond_4b
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 669
    :cond_4c
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 676
    .end local v21           #section:Lcom/android/contacts/editor/KindSectionView;
    :cond_4d
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040112

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/editor/KindSectionView;

    .line 679
    .restart local v21       #section:Lcom/android/contacts/editor/KindSectionView;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    sget-boolean v3, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    if-eqz v3, :cond_4e

    const-string v3, "vnd.android.cursor.item/phone_v2"

    iget-object v6, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 682
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 683
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 684
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setDeleteIconEnable(Z)V

    .line 690
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 686
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 687
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto :goto_9

    .line 695
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    .end local v19           #mimeType:Ljava/lang/String;
    .end local v21           #section:Lcom/android/contacts/editor/KindSectionView;
    :cond_4f
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    .line 697
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 700
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToICEGroupIfNeeded()V

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 704
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->IsNeedlessAddFieldButton()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 708
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->requestFocusForFirstEditField()V

    .line 712
    :cond_51
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/PhoneticNameEditorView;->hasData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 716
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    goto/16 :goto_0
.end method

.method public setVibration(Ljava/lang/String;)V
    .locals 1
    .parameter "vibration"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->setVibration(Ljava/lang/String;)V

    .line 993
    :cond_0
    return-void
.end method

.method public setVibrationVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 980
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationVisible:Z

    .line 981
    return-void
.end method

.method public updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1036
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/editor/GroupMembershipView;->updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1037
    return-void
.end method
