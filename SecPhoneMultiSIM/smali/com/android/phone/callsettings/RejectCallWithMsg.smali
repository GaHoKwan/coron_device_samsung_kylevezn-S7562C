.class public Lcom/android/phone/callsettings/RejectCallWithMsg;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RejectCallWithMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field istoastshowing:Z

.field listView:Landroid/widget/ListView;

.field private mCheckedCount:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDeleteDlg:Landroid/app/AlertDialog;

.field private mEdited:I

.field private mIsForeground:Z

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mUpdateScreen:Z

.field private mUpdated:Z

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rejectMsgListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    .line 143
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->istoastshowing:Z

    .line 163
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    .line 165
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    .line 1087
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addRejectMessage(Ljava/lang/String;I)J
    .locals 7
    .parameter "string"
    .parameter "remindtime"

    .prologue
    const/4 v6, 0x1

    .line 783
    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 784
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "reject_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v4, "edit_checked"

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    const-string v4, "remind_time"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 789
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 790
    .local v0, id:J
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 760
    iget-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    if-eqz v1, :cond_2

    .line 761
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 765
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 776
    :goto_1
    return v1

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 768
    goto :goto_1

    .line 761
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 772
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 773
    goto :goto_1

    .line 771
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 776
    goto :goto_1
.end method

.method private deleteRejectMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 799
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 800
    return-void
.end method

.method private deleteRejectMessage(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 805
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 806
    .local v0, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 807
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 895
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 896
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 897
    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 822
    const-string v5, "_id desc"

    .line 823
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 5
    .parameter "layout"

    .prologue
    const/16 v2, 0x8

    .line 325
    const v1, 0x7f090219

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    .line 326
    const v1, 0x7f090218

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    .line 328
    const v1, 0x7f0901a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    .line 329
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    const v1, 0x7f0901a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    .line 332
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 333
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    .line 334
    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 339
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 345
    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040092

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 348
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    .line 350
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$3;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    const v1, 0x7f0901a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    .line 370
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$4;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$4;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$5;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$5;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 409
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$6;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$6;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 423
    return-void

    .line 352
    :cond_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040091

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 353
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1052
    const-string v0, "RejectCallWithMsg"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 1056
    const-string v0, "RejectCallWithMsg"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1057
    return-void
.end method

.method private optionMenuConfigurationChanged(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 544
    .local v0, isLand:Z
    :goto_0
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 545
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v3, v5, :cond_2

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 546
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    if-lez v3, :cond_3

    move v3, v1

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 547
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v4, v5, :cond_4

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 549
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 550
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 570
    :goto_4
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_d

    .line 571
    :cond_0
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 575
    :goto_5
    return-void

    .end local v0           #isLand:Z
    :cond_1
    move v0, v2

    .line 541
    goto :goto_0

    .restart local v0       #isLand:Z
    :cond_2
    move v3, v2

    .line 545
    goto :goto_1

    :cond_3
    move v3, v2

    .line 546
    goto :goto_2

    :cond_4
    move v1, v2

    .line 547
    goto :goto_3

    .line 552
    :cond_5
    if-eqz v0, :cond_9

    .line 553
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v3, v5, :cond_6

    move v3, v1

    :goto_6
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 554
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    if-lez v3, :cond_7

    move v3, v1

    :goto_7
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 555
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v4, v5, :cond_8

    :goto_8
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 557
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 558
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    move v3, v2

    .line 553
    goto :goto_6

    :cond_7
    move v3, v2

    .line 554
    goto :goto_7

    :cond_8
    move v1, v2

    .line 555
    goto :goto_8

    .line 561
    :cond_9
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v3, v5, :cond_a

    move v3, v1

    :goto_9
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 562
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    if-lez v3, :cond_b

    move v3, v1

    :goto_a
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 563
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v4, v5, :cond_c

    :goto_b
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 565
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 566
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_a
    move v3, v2

    .line 561
    goto :goto_9

    :cond_b
    move v3, v2

    .line 562
    goto :goto_a

    :cond_c
    move v1, v2

    .line 563
    goto :goto_b

    .line 573
    :cond_d
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method private refreshRejectList()V
    .locals 5

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 302
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    .line 303
    if-eqz v0, :cond_0

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 314
    :goto_0
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    .line 316
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 311
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    goto :goto_0

    .line 318
    :cond_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040091

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 319
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private showRejectMessage(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    .line 830
    const/4 v3, 0x0

    .line 831
    .local v3, idx:I
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 832
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 833
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 834
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 836
    if-eqz p1, :cond_0

    .line 837
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 839
    :goto_0
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 840
    .local v1, id:J
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 841
    iget v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v5, 0x1

    .line 842
    .local v5, isChanged:Z
    :goto_1
    const/4 v6, 0x0

    .line 845
    .local v6, message:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 846
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 847
    const-string v10, "Edited"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    .line 861
    :goto_2
    const-string v10, "RejectCallWithMsg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RejectMsg idx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Reject Message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "isChanged "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 863
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 864
    .local v9, time:I
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 865
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 866
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 867
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_5

    move v3, v4

    .line 871
    .end local v1           #id:J
    .end local v4           #idx:I
    .end local v5           #isChanged:Z
    .end local v6           #message:Ljava/lang/String;
    .end local v9           #time:I
    .restart local v3       #idx:I
    :cond_0
    const/4 v10, 0x6

    if-le v3, v10, :cond_1

    .line 873
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage()V

    .line 875
    :cond_1
    return-void

    .line 841
    .restart local v1       #id:J
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 849
    .restart local v5       #isChanged:Z
    .restart local v6       #message:Ljava/lang/String;
    :cond_3
    const-wide/16 v10, 0x1

    sub-long v7, v1, v10

    .line 851
    .local v7, stringIdx:J
    const-string v10, "modify_reject_message"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 852
    sget-object v10, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    long-to-int v11, v7

    aget-object v0, v10, v11

    .line 857
    .local v0, entryName:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "string"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v0, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 859
    const-string v10, "RejectCallWithMsg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    .line 854
    .end local v0           #entryName:Ljava/lang/String;
    :cond_4
    sget-object v10, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    long-to-int v11, v7

    aget-object v0, v10, v11

    .restart local v0       #entryName:Ljava/lang/String;
    goto :goto_3

    .end local v0           #entryName:Ljava/lang/String;
    .end local v3           #idx:I
    .end local v7           #stringIdx:J
    .restart local v4       #idx:I
    .restart local v9       #time:I
    :cond_5
    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto/16 :goto_0
.end method

.method private updateCount()V
    .locals 1

    .prologue
    .line 1070
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateTitleBar()V

    .line 1071
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1072
    return-void
.end method

.method private updateDeleteItems()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1060
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    .line 1061
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1062
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1063
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    .line 1061
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1065
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1066
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1067
    return-void

    .line 1065
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private updateItem(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 186
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    .line 192
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 193
    if-eqz p1, :cond_1

    .line 194
    const-string v0, "SELECTED_MESSAGE"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const-string v1, "REMIND_MODE"

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string v0, "RejectCallWithMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remindList.get(mSelectedItem): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    const v5, 0x7f0e02f0

    .line 203
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    const v5, 0x7f0e073e

    .line 207
    :cond_2
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 210
    :cond_3
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method

.method private updateRejectMessage()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1046
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState = :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    .line 1048
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    .line 1049
    return-void

    :cond_0
    move v0, v1

    .line 1046
    goto :goto_0
.end method

.method private updateRejectMessage(Ljava/lang/String;II)V
    .locals 6
    .parameter "string"
    .parameter "rowId"
    .parameter "remindtime"

    .prologue
    const/4 v5, 0x0

    .line 810
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 811
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 812
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 814
    const-string v2, "remind_time"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 816
    .local v0, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 817
    return-void
.end method

.method private updateTitleBar()V
    .locals 3

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e02f0

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1079
    const-string v1, "action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1081
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e073e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 1085
    :goto_0
    return-void

    .line 1083
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteDialog()V
    .locals 4

    .prologue
    .line 999
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1001
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02eb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02d4

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsg$12;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$12;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02d5

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsg$11;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$11;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1030
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    .line 1031
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$13;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$13;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1042
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1043
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 900
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 903
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 922
    const-string v0, "REJECT_MESSAGE_RESULT_Intent"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 923
    const-string v0, "EDITED_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    const-string v1, "EDITED_REMINDTIME"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 925
    const-string v2, "UPDATED"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    .line 926
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 578
    const-string v0, "Configuration"

    const-string v1, "changed "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 579
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    .line 581
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 582
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 222
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 225
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 229
    :cond_0
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 931
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 994
    :goto_0
    return-object v0

    .line 933
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 934
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v4, 0x7f0e02d6

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const v0, 0x7f0e02d8

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v5

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$9;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$9;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 981
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 982
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$10;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 943
    goto :goto_0

    .line 931
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v8, 0x7f020003

    const v7, 0x7f0e02d8

    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 482
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 483
    .local v0, cancelOrder:I
    :goto_0
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 486
    .local v1, saveOrder:I
    :goto_1
    const v4, 0x7f0e02d3

    invoke-interface {p1, v2, v3, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020002

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 488
    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 492
    const/4 v4, 0x7

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 496
    const v4, 0x7f0e02d5

    invoke-interface {p1, v2, v6, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 498
    const/4 v4, 0x5

    const v5, 0x7f0e02d5

    invoke-interface {p1, v2, v4, v0, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const/high16 v5, 0x7f02

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 501
    const/4 v4, 0x4

    invoke-interface {p1, v2, v4, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 503
    const/4 v3, 0x3

    invoke-interface {p1, v2, v3, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020001

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 507
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 508
    return-void

    .end local v0           #cancelOrder:I
    .end local v1           #saveOrder:I
    :cond_0
    move v0, v3

    .line 482
    goto/16 :goto_0

    .restart local v0       #cancelOrder:I
    :cond_1
    move v1, v2

    .line 483
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 236
    const v1, 0x7f040082

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, v:Landroid/view/View;
    if-eqz p3, :cond_0

    .line 239
    const-string v1, "editString"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    .line 242
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->initLayout(Landroid/view/View;)V

    .line 244
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 296
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 297
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 649
    sparse-switch p1, :sswitch_data_0

    .line 689
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v6

    :goto_1
    return v6

    .line 651
    :sswitch_0
    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 653
    const-string v6, "feature_remind_me_later_support "

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 654
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 658
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V

    .line 659
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 660
    const/4 v6, 0x1

    goto :goto_1

    .line 656
    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 663
    :sswitch_1
    const/4 v2, 0x0

    .line 664
    .local v2, currentView:Landroid/widget/ListView;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    .line 665
    .local v4, obj:Landroid/view/View;
    instance-of v6, v4, Landroid/widget/ListView;

    if-eqz v6, :cond_2

    move-object v2, v4

    .line 666
    check-cast v2, Landroid/widget/ListView;

    .line 668
    :cond_2
    if-eqz v2, :cond_0

    .line 669
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 670
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 671
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 673
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v0, :cond_0

    .line 674
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 675
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "childView view : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    .line 673
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 649
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 597
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 600
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v0

    .line 604
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 643
    goto :goto_0

    .line 614
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :pswitch_1
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v2, v5, :cond_0

    .line 621
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 624
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 625
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 628
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 629
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    goto :goto_0

    .line 635
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 640
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    .line 290
    const-string v0, "RejectCallWithMsg"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 291
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 512
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 519
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-ge v0, v7, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 520
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 521
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_4

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 522
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_5

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 523
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_6

    move v1, v2

    :goto_4
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 524
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_7

    move v1, v2

    :goto_5
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 526
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    if-ge v0, v7, :cond_8

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 528
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_9

    .line 529
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :goto_7
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 536
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 537
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateTitleBar()V

    .line 538
    return-void

    :cond_2
    move v1, v3

    .line 519
    goto :goto_0

    :cond_3
    move v1, v3

    .line 520
    goto :goto_1

    :cond_4
    move v1, v3

    .line 521
    goto :goto_2

    :cond_5
    move v1, v3

    .line 522
    goto :goto_3

    :cond_6
    move v1, v3

    .line 523
    goto :goto_4

    :cond_7
    move v1, v3

    .line 524
    goto :goto_5

    :cond_8
    move v1, v3

    .line 527
    goto :goto_6

    .line 531
    :cond_9
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 250
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 251
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    .line 252
    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 256
    :cond_0
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 257
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    .line 258
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 261
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mState in onResume = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    .line 263
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 279
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_4

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 283
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    .line 285
    return-void

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    goto :goto_1

    .line 270
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    goto :goto_1

    .line 275
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v0, :cond_2

    .line 276
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->refreshRejectList()V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 279
    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 215
    const-string v0, "editString"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public saveRejectMessage(Ljava/lang/String;I)V
    .locals 13
    .parameter "resultString"
    .parameter "resultRemind"

    .prologue
    const v12, 0x7f0e035a

    const/16 v11, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 694
    move-object v3, p1

    .line 695
    .local v3, tempString:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 697
    .local v1, id:J
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    iput v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 701
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0e0356

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    .line 757
    :goto_1
    return-void

    :cond_0
    move v5, v7

    .line 697
    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 708
    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    .line 714
    :cond_2
    const-string v5, " "

    const-string v8, ""

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 715
    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    .line 719
    :cond_3
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    const/4 v8, -0x1

    if-le v5, v8, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    if-eqz v5, :cond_6

    .line 720
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 721
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 722
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 723
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 725
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 726
    .local v4, update_id:I
    invoke-direct {p0, v3, v4, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage(Ljava/lang/String;II)V

    .line 727
    iput v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    .line 746
    .end local v4           #update_id:I
    :cond_4
    :goto_2
    const-string v5, "feature_remind_me_later_support "

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 747
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 751
    :goto_3
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_5

    .line 752
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 753
    :cond_5
    iput v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 756
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    goto/16 :goto_1

    .line 730
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 731
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 732
    const/4 v5, 0x6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-le v5, v8, :cond_7

    .line 733
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 734
    invoke-direct {p0, v3, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->addRejectMessage(Ljava/lang/String;I)J

    move-result-wide v1

    .line 735
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 736
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 737
    const-string v5, "RejectCallWithMsg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 741
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 739
    :cond_7
    const-string v5, "RejectCallWithMsg"

    const-string v8, "max in saveRejectMessage - no add"

    invoke-static {v5, v8, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_4

    .line 749
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_8
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_3
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$7;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$8;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$8;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 479
    return-void
.end method
