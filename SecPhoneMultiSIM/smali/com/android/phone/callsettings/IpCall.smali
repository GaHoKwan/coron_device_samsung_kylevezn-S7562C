.class public Lcom/android/phone/callsettings/IpCall;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "IpCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;

.field private static IP_CALL_NUMBER:Ljava/lang/String;


# instance fields
.field private IPCALL_URI:Landroid/net/Uri;

.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field private ipCallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ipCallListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field istoastshowing:Z

.field listView:Landroid/widget/ListView;

.field private mCheckedCount:I

.field private mDefaultIpNumber:Ljava/lang/String;

.field private mEdited:I

.field private mInitCreateLayout:Z

.field private mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

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

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mSimId:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mUpdated:Z

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ipcall_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/IpCall;->FROM:[Ljava/lang/String;

    .line 110
    const-string v0, "IP_CALL_NUMBER"

    sput-object v0, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    .line 143
    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->istoastshowing:Z

    .line 159
    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    .line 163
    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    .line 165
    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mInitCreateLayout:Z

    .line 468
    new-instance v0, Lcom/android/phone/callsettings/IpCall$6;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpCall$6;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    .line 947
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->updateItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/phone/callsettings/IpCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/IpCall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/callsettings/IpCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/IpCall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/IpCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/IpCall;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->deleteIpNumber(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V

    return-void
.end method

.method private addIpNumber(Ljava/lang/String;)J
    .locals 7
    .parameter "string"

    .prologue
    const/4 v6, 0x1

    .line 653
    iput v6, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 654
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 655
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "ipcall_number"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v4, "edit_checked"

    iget v5, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 658
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 659
    .local v0, id:J
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 630
    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    if-eqz v1, :cond_2

    .line 631
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 635
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 646
    :goto_1
    return v1

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 638
    goto :goto_1

    .line 631
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 642
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 643
    goto :goto_1

    .line 641
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 646
    goto :goto_1
.end method

.method private deleteIpNumber()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method private deleteIpNumber(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 674
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 675
    .local v0, ipCallUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 676
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 778
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 779
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 780
    return-void
.end method

.method private getDefaultIpNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_0

    .line 1066
    :goto_0
    return-object v0

    .line 1063
    :cond_0
    const-string v0, "ip_call_cmcc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    const-string v0, "17951"

    goto :goto_0

    .line 1066
    :cond_1
    const-string v0, "17911"

    goto :goto_0
.end method

.method private getIpNumberList()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 690
    const-string v5, "_id desc"

    .line 691
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/IpCall;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 6
    .parameter "layout"

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    .line 262
    const v1, 0x7f09002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    .line 263
    const v1, 0x7f090187

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    .line 265
    const v1, 0x7f0901a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    .line 266
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v1, 0x7f0901a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/widget/CheckBox;

    .line 269
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList()Landroid/database/Cursor;

    move-result-object v0

    .line 270
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V

    .line 271
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_0
    iput v5, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 276
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 282
    :cond_1
    new-instance v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040058

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    .line 283
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040092

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 286
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 289
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$1;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    const v1, 0x7f0901a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    .line 301
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$2;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iput-boolean v5, p0, Lcom/android/phone/callsettings/IpCall;->mInitCreateLayout:Z

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$3;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 336
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 916
    const-string v0, "IpCall"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
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

    .line 430
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 433
    .local v0, isLand:Z
    :goto_0
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 434
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v3, v5, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 435
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    if-lez v3, :cond_2

    move v3, v1

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 436
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v4, v5, :cond_3

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 438
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 439
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 458
    :goto_4
    return-void

    .end local v0           #isLand:Z
    :cond_0
    move v0, v2

    .line 430
    goto :goto_0

    .restart local v0       #isLand:Z
    :cond_1
    move v3, v2

    .line 434
    goto :goto_1

    :cond_2
    move v3, v2

    .line 435
    goto :goto_2

    :cond_3
    move v1, v2

    .line 436
    goto :goto_3

    .line 441
    :cond_4
    if-eqz v0, :cond_8

    .line 442
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v3, v5, :cond_5

    move v3, v1

    :goto_5
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 443
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    if-lez v3, :cond_6

    move v3, v1

    :goto_6
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 444
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v4, v5, :cond_7

    :goto_7
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 446
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 447
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_5
    move v3, v2

    .line 442
    goto :goto_5

    :cond_6
    move v3, v2

    .line 443
    goto :goto_6

    :cond_7
    move v1, v2

    .line 444
    goto :goto_7

    .line 450
    :cond_8
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v3, v5, :cond_9

    move v3, v1

    :goto_8
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 451
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    if-lez v3, :cond_a

    move v3, v1

    :goto_9
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 452
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v4, v5, :cond_b

    :goto_a
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 454
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_9
    move v3, v2

    .line 450
    goto :goto_8

    :cond_a
    move v3, v2

    .line 451
    goto :goto_9

    :cond_b
    move v1, v2

    .line 452
    goto :goto_a
.end method

.method private saveIpNumber(Ljava/lang/String;)V
    .locals 12
    .parameter "resultString"

    .prologue
    const v11, 0x7f0e0455

    const/16 v10, 0x8

    const/4 v6, 0x2

    const/4 v9, 0x0

    .line 569
    move-object v3, p1

    .line 570
    .local v3, tempString:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 572
    .local v1, id:J
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput v5, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 576
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 577
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

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    .line 627
    :goto_1
    return-void

    :cond_0
    move v5, v6

    .line 572
    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 583
    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    .line 589
    :cond_2
    const-string v5, " "

    const-string v7, ""

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 590
    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    .line 594
    :cond_3
    iget v5, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    const/4 v7, -0x1

    if-le v5, v7, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    if-eqz v5, :cond_6

    .line 595
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 596
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v5, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 598
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 599
    .local v4, update_id:I
    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Ljava/lang/String;I)V

    .line 600
    iput v9, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    .line 619
    .end local v4           #update_id:I
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 621
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_5

    .line 622
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 623
    :cond_5
    iput v6, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 626
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    goto :goto_1

    .line 603
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList()Landroid/database/Cursor;

    move-result-object v0

    .line 604
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 605
    const/4 v5, 0x6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v5, v7, :cond_7

    .line 606
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 607
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->addIpNumber(Ljava/lang/String;)J

    move-result-wide v1

    .line 608
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 609
    const-string v5, "IpCall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 612
    :cond_7
    const-string v5, "IpCall"

    const-string v7, "max in saveIpNumber - no add"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setDefaultIpNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "ipnumber"

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1055
    return-void
.end method

.method private showIpNumberList(Landroid/database/Cursor;)V
    .locals 12
    .parameter "cursor"

    .prologue
    .line 698
    const/4 v3, 0x0

    .line 699
    .local v3, idx:I
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 700
    iget-object v9, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 701
    iget-object v9, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 703
    if-eqz p1, :cond_1

    .line 704
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 706
    :goto_0
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 707
    .local v1, id:J
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 708
    iget v9, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v5, 0x1

    .line 709
    .local v5, isChanged:Z
    :goto_1
    const/4 v6, 0x0

    .line 711
    .local v6, message:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 712
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 713
    const-string v9, "Edited"

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 738
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, defaultNum:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 740
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default ip num = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 741
    iput-object v6, p0, Lcom/android/phone/callsettings/IpCall;->mDefaultIpNumber:Ljava/lang/String;

    .line 742
    iget-object v9, p0, Lcom/android/phone/callsettings/IpCall;->mDefaultIpNumber:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    .line 745
    :cond_0
    const-string v9, "IpCall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IpCall idx"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IP number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "isChanged "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v9, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 749
    iget-object v9, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 750
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_a

    move v3, v4

    .line 754
    .end local v0           #defaultNum:Ljava/lang/String;
    .end local v1           #id:J
    .end local v4           #idx:I
    .end local v5           #isChanged:Z
    .end local v6           #message:Ljava/lang/String;
    .restart local v3       #idx:I
    :cond_1
    const/4 v9, 0x6

    if-le v3, v9, :cond_2

    .line 756
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->deleteIpNumber()V

    .line 758
    :cond_2
    return-void

    .line 708
    .restart local v1       #id:J
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 715
    .restart local v5       #isChanged:Z
    .restart local v6       #message:Ljava/lang/String;
    :cond_4
    iget v9, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 716
    const-wide/16 v9, 0x1

    sub-long v7, v1, v9

    .line 717
    .local v7, stringIdx:J
    const-string v9, "ip_call_cmcc"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 718
    sget-object v9, Lcom/android/phone/callsettings/IpCallDBSim2;->defaultIpNumberListCMCC:[Ljava/lang/String;

    long-to-int v10, v7

    aget-object v6, v9, v10

    .line 735
    :goto_3
    const-string v9, "IpCall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not Edited, Use Default valueIP number = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 719
    :cond_5
    const-string v9, "feature_ctc"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 720
    sget-object v9, Lcom/android/phone/callsettings/IpCallDBSim2;->defaultIpNumberListCTC:[Ljava/lang/String;

    long-to-int v10, v7

    aget-object v6, v9, v10

    goto :goto_3

    .line 722
    :cond_6
    sget-object v9, Lcom/android/phone/callsettings/IpCallDBSim2;->defaultIpNumberList:[Ljava/lang/String;

    long-to-int v10, v7

    aget-object v6, v9, v10

    goto :goto_3

    .line 724
    .end local v7           #stringIdx:J
    :cond_7
    const-wide/16 v9, 0x1

    sub-long v7, v1, v9

    .line 725
    .restart local v7       #stringIdx:J
    const-string v9, "ip_call_cmcc"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 726
    sget-object v9, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberListCMCC:[Ljava/lang/String;

    long-to-int v10, v7

    aget-object v6, v9, v10

    goto :goto_3

    .line 727
    :cond_8
    const-string v9, "feature_ctc"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 728
    sget-object v9, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberListCTC:[Ljava/lang/String;

    long-to-int v10, v7

    aget-object v6, v9, v10

    goto :goto_3

    .line 730
    :cond_9
    sget-object v9, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberList:[Ljava/lang/String;

    long-to-int v10, v7

    aget-object v6, v9, v10

    goto :goto_3

    .end local v3           #idx:I
    .end local v7           #stringIdx:J
    .restart local v0       #defaultNum:Ljava/lang/String;
    .restart local v4       #idx:I
    :cond_a
    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto/16 :goto_0
.end method

.method private updateCount()V
    .locals 1

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateTitleBar()V

    .line 931
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 932
    return-void
.end method

.method private updateDeleteItems()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 920
    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    .line 921
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 922
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 923
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    .line 921
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 926
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 927
    return-void

    .line 925
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private updateIpNumberList()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 910
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mState = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 912
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    .line 913
    return-void
.end method

.method private updateIpNumberList(Ljava/lang/String;I)V
    .locals 6
    .parameter "string"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 679
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 680
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 681
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "ipcall_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 683
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 684
    .local v0, ipCallUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 685
    return-void
.end method

.method private updateItem(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    .line 169
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    const-string v0, "SELECTED_ITEM"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "UPDATE_MODE"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "IS_DEFAULT"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    :cond_0
    const-string v0, "IP_CALL_LIST_SIZE"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const v5, 0x7f0e0452

    .line 179
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const v5, 0x7f0e073e

    .line 183
    :cond_1
    const-class v0, Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 184
    return-void
.end method

.method private updateTitleBar()V
    .locals 3

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0452

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

    .line 939
    const-string v1, "action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 941
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e073e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteDialog()V
    .locals 3

    .prologue
    .line 869
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 871
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02d4

    new-instance v2, Lcom/android/phone/callsettings/IpCall$11;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$11;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02d5

    new-instance v2, Lcom/android/phone/callsettings/IpCall$10;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$10;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/IpCall$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$9;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 907
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 783
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 784
    packed-switch p1, :pswitch_data_0

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 786
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 787
    const-string v1, "IP_NUMBER_RESULT_Intent"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 789
    const-string v1, "EDITED_ITEM"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, resultString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 791
    const-string v1, "UPDATED"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    .line 792
    const-string v1, "IS_DEFAULT"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 793
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    .line 794
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->saveIpNumber(Ljava/lang/String;)V

    .line 796
    new-instance v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040058

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    .line 797
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 461
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 465
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 466
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 189
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 193
    .local v1, arg:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 194
    const-string v2, "CallSettingTab"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    .line 197
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 201
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 205
    :cond_1
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 206
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 805
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 864
    :goto_0
    return-object v0

    .line 807
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 808
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v4, 0x7f0e02d6

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const v4, 0x7f0e02d8

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    new-instance v0, Lcom/android/phone/callsettings/IpCall$7;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpCall$7;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 851
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 852
    new-instance v1, Lcom/android/phone/callsettings/IpCall$8;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$8;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 817
    goto :goto_0

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f0e02d5

    const v5, 0x7f0e02d8

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 381
    const v0, 0x7f0e02d3

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 383
    const/4 v0, 0x2

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 386
    invoke-interface {p1, v2, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 388
    const/4 v0, 0x5

    invoke-interface {p1, v2, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 391
    const/4 v0, 0x4

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 393
    const/4 v0, 0x3

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 397
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 398
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 211
    const v1, 0x7f040050

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, v:Landroid/view/View;
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 214
    const-string v1, "IP_CALL_NUMBER_SIM2"

    sput-object v1, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    .line 215
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_SIM2_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    .line 221
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->initLayout(Landroid/view/View;)V

    .line 223
    return-object v0

    .line 217
    :cond_0
    const-string v1, "IP_CALL_NUMBER"

    sput-object v1, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    .line 218
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->mInitCreateLayout:Z

    .line 259
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 532
    sparse-switch p1, :sswitch_data_0

    .line 564
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 534
    :sswitch_0
    iget v5, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 536
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 537
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V

    .line 538
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 539
    const/4 v5, 0x1

    goto :goto_1

    .line 542
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 543
    .local v2, currentView:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 544
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 545
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 546
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 548
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_0

    .line 549
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 550
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "childView view : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 548
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 532
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

    .line 491
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 494
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v0

    .line 498
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 526
    goto :goto_0

    .line 500
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/IpCall;->updateItem(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :pswitch_1
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v2, v5, :cond_0

    .line 505
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 508
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 509
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 511
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 512
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    goto :goto_0

    .line 518
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 523
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCall;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 252
    const-string v0, "IpCall"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
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

    .line 402
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 409
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-ge v0, v7, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 410
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 412
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v1, v5, :cond_4

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 413
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v1, v5, :cond_5

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 415
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mInitCreateLayout:Z

    if-eqz v1, :cond_1

    .line 416
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    if-ge v0, v7, :cond_6

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 417
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v1, v5, :cond_7

    .line 418
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :goto_5
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 425
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 426
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateTitleBar()V

    .line 427
    return-void

    :cond_2
    move v1, v3

    .line 409
    goto :goto_0

    :cond_3
    move v1, v3

    .line 410
    goto :goto_1

    :cond_4
    move v1, v3

    .line 412
    goto :goto_2

    :cond_5
    move v1, v3

    .line 413
    goto :goto_3

    :cond_6
    move v1, v3

    .line 416
    goto :goto_4

    .line 420
    :cond_7
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 229
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in onResume = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 232
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 243
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 247
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    .line 248
    return-void

    .line 235
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    goto :goto_0

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCall$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$4;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCall$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$5;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    return-void
.end method
