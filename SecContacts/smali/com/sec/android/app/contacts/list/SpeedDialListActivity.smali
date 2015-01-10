.class public Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
.super Landroid/app/Activity;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;,
        Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;,
        Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION2:[Ljava/lang/String;


# instance fields
.field private final DISPLAY_NAME:Ljava/lang/String;

.field private final NUMBER:Ljava/lang/String;

.field private final SELECTED_NAME:Ljava/lang/String;

.field private final TYPE:Ljava/lang/String;

.field mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeOrderView:Landroid/view/View;

.field private mChangedPosition:I

.field private mContactIDCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMode:I

.field private mCustomMessageBody:Landroid/widget/LinearLayout;

.field private mCustomMessagePhoneNumber:Landroid/widget/TextView;

.field private mCustomMessageType:Landroid/widget/TextView;

.field private mDataIDCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDestinationIndex:I

.field private mDetailViewUri:Landroid/net/Uri;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisplayName:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFromDetail:Z

.field private mIsSelected:Z

.field private mMenuDone:Landroid/view/MenuItem;

.field private mOldIndex:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOrigContactIDCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOrigDataIDCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReloadData:Z

.field private mSelectedContactName:Ljava/lang/String;

.field private mSelectedPhoneNumber:Ljava/lang/String;

.field private mSpeedDialList:Landroid/widget/AbsListView;

.field private mSpeedDialUri:Landroid/net/Uri;

.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    .line 118
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "speed_dial_data_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    .line 124
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_super_primary"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->DATA_PROJECTION:[Ljava/lang/String;

    .line 129
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "has_phone_number"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 134
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x65

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const-string v0, "TYPE"

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->TYPE:Ljava/lang/String;

    .line 89
    const-string v0, "DISPLAY_NAME"

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->DISPLAY_NAME:Ljava/lang/String;

    .line 90
    const-string v0, "SELECTED_NAME"

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SELECTED_NAME:Ljava/lang/String;

    .line 91
    const-string v0, "NUMBER"

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->NUMBER:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    .line 175
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    .line 177
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    .line 1847
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->updateDoneButtonStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getOnePhoneNumberId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->assignSpeedDial(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    return-object p1
.end method

.method private assignSpeedDial(J)V
    .locals 9
    .parameter "dataId"

    .prologue
    const/4 v3, 0x0

    .line 1763
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return-void

    .line 1767
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mView:Landroid/view/View;

    .line 1769
    .local v8, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1771
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1772
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    iget v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {p0, v6, v0, v8, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1773
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1774
    .local v7, values:Landroid/content/ContentValues;
    const-string v0, "key_number"

    iget v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1775
    const-string v0, "speed_dial_data_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1776
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1779
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1781
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1783
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->populateUpdatedData()V

    .line 1784
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->notifyDataSetChanged()V

    .line 1785
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private cleanupResouces()V
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 1931
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    .line 1932
    return-void
.end method

.method private getOnePhoneNumberId()J
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1736
    const-wide/16 v6, -0x1

    .line 1737
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1739
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "data2"

    aput-object v4, v2, v3

    .line 1742
    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1744
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 1748
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1751
    if-eqz v2, :cond_1

    .line 1752
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 1753
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1757
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1759
    :goto_1
    return-wide v0

    :cond_0
    move-wide v0, v6

    goto :goto_0

    :cond_1
    move-wide v0, v6

    goto :goto_1
.end method

.method private isOrderChanged()Z
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1665
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    if-nez v9, :cond_1

    :cond_0
    move v9, v11

    .line 1698
    :goto_0
    return v9

    .line 1669
    :cond_1
    const-wide/16 v5, -0x1

    .line 1670
    .local v5, origContactId:J
    const-wide/16 v1, -0x1

    .line 1671
    .local v1, newContactId:J
    const-wide/16 v7, -0x1

    .line 1672
    .local v7, origDataId:J
    const-wide/16 v3, -0x1

    .line 1673
    .local v3, newDataId:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v9, 0x64

    if-gt v0, v9, :cond_8

    .line 1674
    const-wide/16 v5, -0x1

    .line 1675
    const-wide/16 v1, -0x1

    .line 1676
    const-wide/16 v7, -0x1

    .line 1677
    const-wide/16 v3, -0x1

    .line 1679
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1680
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1681
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1682
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1683
    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1684
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1685
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1686
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1689
    :cond_5
    cmp-long v9, v5, v1

    if-eqz v9, :cond_6

    move v9, v10

    .line 1690
    goto/16 :goto_0

    .line 1693
    :cond_6
    const-wide/16 v12, -0x1

    cmp-long v9, v5, v12

    if-eqz v9, :cond_7

    cmp-long v9, v5, v1

    if-nez v9, :cond_7

    cmp-long v9, v7, v3

    if-eqz v9, :cond_7

    move v9, v10

    .line 1694
    goto/16 :goto_0

    .line 1673
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_8
    move v9, v11

    .line 1698
    goto/16 :goto_0
.end method

.method private isSpeedDialRemoved()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1702
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 1721
    :goto_0
    return v5

    .line 1706
    :cond_1
    const-wide/16 v3, -0x1

    .line 1707
    .local v3, origContactId:J
    const-wide/16 v1, -0x1

    .line 1708
    .local v1, newContactId:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v5, 0x64

    if-gt v0, v5, :cond_5

    .line 1709
    const-wide/16 v3, -0x1

    .line 1710
    const-wide/16 v1, -0x1

    .line 1711
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1712
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1713
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1714
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1717
    :cond_3
    cmp-long v5, v3, v1

    if-eqz v5, :cond_4

    .line 1718
    const/4 v5, 0x1

    goto :goto_0

    .line 1708
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v5, v6

    .line 1721
    goto :goto_0
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1914
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    :goto_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 1920
    .local v1, imageView:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1921
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1922
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1925
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_1
    return-void

    .line 1915
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1923
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 1896
    if-eqz p1, :cond_1

    .line 1898
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 1900
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1901
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1902
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1903
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1905
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childCount:I
    .end local v3           #index:I
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :catch_0
    move-exception v5

    .line 1908
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->nullViewDrawable(Landroid/view/View;)V

    .line 1910
    :cond_1
    return-void
.end method

.method private setChangeOrderInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    .line 1562
    iput v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    .line 1563
    iput v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    .line 1564
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    .line 1565
    return-void
.end method

.method private updateDoneButtonStatus()V
    .locals 2

    .prologue
    .line 1724
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1725
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isOrderChanged()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1733
    :cond_0
    :goto_0
    return-void

    .line 1728
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isSpeedDialRemoved()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public doShowPicker()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1789
    const-string v0, "SpeedDialListActivity"

    const-string v1, "onCreateDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1794
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "display_name"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data3"

    aput-object v4, v2, v3

    .line 1797
    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1799
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1803
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1808
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1809
    const-string v0, "display_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1810
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object v1, v0

    .line 1813
    :goto_0
    new-instance v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;

    invoke-direct {v3, p0, p0, v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1816
    new-instance v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;

    invoke-direct {v4, p0, v3, v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;Landroid/database/Cursor;)V

    .line 1827
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1829
    const v2, 0x7f04006f

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1831
    const v0, 0x7f09001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1832
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1833
    const v0, 0x7f0901ae

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1834
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1836
    const v0, 0x7f0901af

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1837
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1838
    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1840
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1841
    invoke-virtual {v6, v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1842
    const/high16 v0, 0x104

    invoke-virtual {v6, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1843
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1844
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1845
    return-void

    :cond_0
    move-object v1, v5

    goto :goto_0
.end method

.method public isListEmpty()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1259
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1262
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1263
    :cond_0
    if-eqz v6, :cond_1

    .line 1264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1266
    :cond_1
    const/4 v0, 0x1

    .line 1271
    :goto_0
    return v0

    .line 1268
    :cond_2
    if-eqz v6, :cond_3

    .line 1269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1271
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x0

    .line 962
    if-ne p2, v10, :cond_0

    if-eqz p3, :cond_0

    .line 963
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    .line 964
    const-string v0, "index"

    invoke-virtual {p3, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    .line 965
    const-string v0, "SpeedDialListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    if-ne v0, v10, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 975
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 984
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v10, :cond_5

    move v0, v8

    .line 989
    :goto_1
    if-nez v0, :cond_6

    .line 990
    const-string v0, "phone_data_id"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 991
    const-string v2, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 994
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 998
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1001
    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1005
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v8, :cond_a

    .line 1006
    :cond_2
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1008
    :try_start_0
    const-string v0, "is_super_primary"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    const-string v0, "_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move v2, v8

    .line 1021
    :goto_3
    if-nez v2, :cond_3

    .line 1022
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1023
    const-string v0, "_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1027
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 1028
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1033
    :cond_4
    :goto_5
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    .line 1037
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mView:Landroid/view/View;

    .line 1041
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1042
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1045
    if-nez v3, :cond_7

    .line 1046
    const-string v0, "SpeedDialListActivity"

    const-string v1, "Contact uri is null, contact does not exist."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move v0, v9

    .line 984
    goto :goto_1

    .line 1030
    :cond_6
    const-string v0, "phone_data_id"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_5

    .line 1050
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1051
    if-eqz v2, :cond_9

    .line 1052
    iget v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    invoke-virtual {p0, v2, v3, v8, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I

    move-result v3

    if-ne v3, v10, :cond_8

    .line 1053
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1054
    const-string v4, "key_number"

    iget v6, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    const-string v4, "speed_dial_data_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1056
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1061
    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1063
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 1014
    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_a
    move v2, v9

    move-wide v0, v6

    goto/16 :goto_3

    :cond_b
    move-wide v0, v6

    goto/16 :goto_4
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1392
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 1398
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1395
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCancelButtonClicked()V
    .locals 1

    .prologue
    .line 1661
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    .line 1662
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1347
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1384
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1353
    :pswitch_0
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x7f090332

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1357
    if-eqz v1, :cond_0

    .line 1358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    :cond_0
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x7f090328

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0d0351

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1362
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x7f090326

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1366
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1371
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->invalidateOptionsMenu()V

    move v0, v2

    .line 1372
    goto :goto_0

    .line 1375
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TAB"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1376
    const-string v3, "additional"

    const-string v4, "phone"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    const-string v3, "from_speed_dial"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1378
    const-string v3, "has_result"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1379
    const-string v3, "index"

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1381
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 1382
    goto/16 :goto_0

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 183
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "mode"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ReloadSpeedDial"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fromDetail"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "contactUri"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    .line 189
    iget v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v4, :pswitch_data_0

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 202
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_5

    .line 204
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 209
    .local v2, rot:I
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    if-ne v2, v8, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 215
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/view/Window;->setLayout(II)V

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f04006e

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 223
    .end local v3           #width:I
    :cond_0
    :goto_1
    iget v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v4

    if-nez v4, :cond_4

    .line 224
    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    .end local v2           #rot:I
    :goto_2
    const v4, 0x7f040167

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setContentView(I)V

    .line 235
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setChangeOrderInit()V

    .line 238
    const-string v4, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialUri:Landroid/net/Uri;

    .line 240
    if-eqz p1, :cond_1

    .line 241
    const-string v4, "DISPLAY_NAME"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    .line 242
    const-string v4, "TYPE"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    .line 243
    const-string v4, "NUMBER"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 244
    const-string v4, "SELECTED_NAME"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    .line 248
    :cond_1
    const v4, 0x7f090331

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    .line 251
    :try_start_0
    new-instance v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    .line 252
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_3
    iget v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    if-nez v4, :cond_7

    .line 258
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/AbsListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 276
    :cond_2
    :goto_4
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 278
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    .line 279
    return-void

    .line 191
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :pswitch_0
    const v4, 0x7f0d0253

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 194
    :pswitch_1
    const v4, 0x7f0d027f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 197
    :pswitch_2
    const v4, 0x7f0d0068

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 219
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    .restart local v2       #rot:I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_1

    .line 226
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 228
    .end local v2           #rot:I
    :cond_5
    iget v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v4

    if-nez v4, :cond_6

    .line 229
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 231
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 260
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    iget v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 261
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_4

    .line 262
    :cond_8
    iget v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    if-ne v4, v8, :cond_2

    .line 263
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_4

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1312
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 1315
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1316
    if-nez v0, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1321
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1324
    const v1, 0x7f0d0253

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1328
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v2, 0x7f090326

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1330
    const/4 v1, 0x3

    const v2, 0x7f0d034f

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1331
    const/4 v1, 0x4

    const v2, 0x7f0d0068

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1335
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1336
    :cond_3
    invoke-interface {p1}, Landroid/view/ContextMenu;->clearHeader()V

    .line 1337
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1340
    :cond_4
    if-eqz v0, :cond_0

    .line 1341
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1078
    const-string v0, "SpeedDialListActivity"

    const-string v2, "onCreateDialog()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04005b

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    const v2, 0x7f090171

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageType:Landroid/widget/TextView;

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    const v2, 0x7f090172

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    .line 1107
    if-nez p1, :cond_4

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1109
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1120
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0341

    new-instance v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$3;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0350

    new-instance v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$2;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1146
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1147
    const v1, 0x7f0d033d

    new-instance v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1196
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1197
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 1158
    :cond_4
    if-ne p1, v6, :cond_5

    .line 1159
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1160
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1162
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageType:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1163
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1164
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0354

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1172
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0353

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0359

    new-instance v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$6;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d02f8

    new-instance v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$5;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f12000b

    const v1, 0x7f0903b5

    const/4 v2, 0x1

    .line 1203
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isListEmpty()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return v2

    .line 1207
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    if-nez v0, :cond_0

    .line 1212
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1214
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1215
    const v1, 0x7f120018

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1223
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1226
    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1227
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_0

    .line 1230
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1234
    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1235
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_0

    .line 1212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1886
    const-string v0, "SpeedDialListActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 1888
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->cleanupResouces()V

    .line 1890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    .line 1892
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1893
    return-void
.end method

.method public onDoneButtonClicked()V
    .locals 26

    .prologue
    .line 1569
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1570
    .local v4, contentResolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 1571
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1572
    .local v22, values:Landroid/content/ContentValues;
    const-wide/16 v13, -0x1

    .line 1573
    .local v13, origContactId:J
    const-wide/16 v7, -0x1

    .line 1574
    .local v7, newContactId:J
    const-wide/16 v15, -0x1

    .line 1575
    .local v15, origDataId:J
    const-wide/16 v9, -0x1

    .line 1577
    .local v9, newDataId:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    const/16 v23, 0x64

    move/from16 v0, v23

    if-gt v5, v0, :cond_c

    .line 1578
    const-wide/16 v13, -0x1

    .line 1579
    const-wide/16 v7, -0x1

    .line 1580
    const-wide/16 v15, -0x1

    .line 1581
    const-wide/16 v9, -0x1

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1585
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1588
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1591
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1594
    :cond_3
    cmp-long v23, v13, v7

    if-eqz v23, :cond_7

    .line 1595
    const-wide/16 v23, -0x1

    cmp-long v23, v7, v23

    if-nez v23, :cond_5

    .line 1598
    add-int/lit8 v6, v5, 0x1

    .line 1599
    .local v6, keyNumber:I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1600
    .local v20, uri:Landroid/net/Uri;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "key_number="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1577
    .end local v6           #keyNumber:I
    .end local v20           #uri:Landroid/net/Uri;
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1605
    :cond_5
    add-int/lit8 v6, v5, 0x1

    .line 1606
    .restart local v6       #keyNumber:I
    const-wide/16 v23, -0x1

    cmp-long v23, v13, v23

    if-nez v23, :cond_6

    .line 1607
    const-string v24, "speed_dial_data_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1608
    const-string v23, "key_number"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1609
    const-string v23, "content://com.android.contacts/contacts/speeddial/"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1610
    .restart local v20       #uri:Landroid/net/Uri;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 1611
    .local v21, uriInserted:Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    goto :goto_1

    .line 1613
    .end local v20           #uri:Landroid/net/Uri;
    .end local v21           #uriInserted:Landroid/net/Uri;
    :cond_6
    const-string v24, "speed_dial_data_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1614
    const-string v23, "key_number"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1616
    .restart local v20       #uri:Landroid/net/Uri;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "key_number="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 1617
    .local v19, rowChanged:I
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_1

    .line 1621
    .end local v6           #keyNumber:I
    .end local v19           #rowChanged:I
    .end local v20           #uri:Landroid/net/Uri;
    :cond_7
    const-wide/16 v23, -0x1

    cmp-long v23, v13, v23

    if-eqz v23, :cond_4

    cmp-long v23, v13, v7

    if-nez v23, :cond_4

    cmp-long v23, v15, v9

    if-eqz v23, :cond_4

    .line 1622
    add-int/lit8 v6, v5, 0x1

    .line 1623
    .restart local v6       #keyNumber:I
    const-string v24, "speed_dial_data_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1624
    const-string v23, "key_number"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1625
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1626
    .restart local v20       #uri:Landroid/net/Uri;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "key_number="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 1627
    .restart local v19       #rowChanged:I
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_1

    .line 1630
    .end local v5           #i:I
    .end local v6           #keyNumber:I
    .end local v7           #newContactId:J
    .end local v9           #newDataId:J
    .end local v13           #origContactId:J
    .end local v15           #origDataId:J
    .end local v19           #rowChanged:I
    .end local v20           #uri:Landroid/net/Uri;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 1631
    const-wide/16 v17, -0x1

    .line 1632
    .local v17, origId:J
    const-wide/16 v11, -0x1

    .line 1633
    .local v11, newId:J
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    const/16 v23, 0x64

    move/from16 v0, v23

    if-gt v5, v0, :cond_c

    .line 1634
    const-wide/16 v17, -0x1

    .line 1635
    const-wide/16 v11, -0x1

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_9

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 1639
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_a

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1642
    :cond_a
    cmp-long v23, v17, v11

    if-eqz v23, :cond_b

    .line 1643
    const-wide/16 v23, -0x1

    cmp-long v23, v11, v23

    if-nez v23, :cond_b

    .line 1646
    add-int/lit8 v6, v5, 0x1

    .line 1647
    .restart local v6       #keyNumber:I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1648
    .restart local v20       #uri:Landroid/net/Uri;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "key_number="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1633
    .end local v6           #keyNumber:I
    .end local v20           #uri:Landroid/net/Uri;
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1655
    .end local v5           #i:I
    .end local v11           #newId:J
    .end local v17           #origId:J
    :cond_c
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    .line 1656
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 22
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 470
    if-nez p3, :cond_2

    .line 471
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    if-eqz v3, :cond_1

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 475
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setChangeOrderInit()V

    .line 729
    :cond_1
    :goto_0
    return-void

    .line 477
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    if-eqz v3, :cond_8

    .line 478
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    .line 479
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    .line 480
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    if-ne v3, v4, :cond_3

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setChangeOrderInit()V

    .line 483
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 486
    :cond_3
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 491
    .local v20, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 496
    .local v16, tempContactID:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 500
    .local v18, tempDataID:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .end local v16           #tempContactID:J
    .end local v18           #tempDataID:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 505
    .restart local v16       #tempContactID:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 509
    .restart local v18       #tempDataID:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .end local v16           #tempContactID:J
    .end local v18           #tempDataID:J
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/view/View;I)I

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->notifyDataSetChanged()V

    .line 532
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->updateDoneButtonStatus()V

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/view/View;I)I

    goto/16 :goto_0

    .line 514
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 517
    .restart local v16       #tempContactID:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 521
    .restart local v18       #tempDataID:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDestinationIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 553
    .end local v16           #tempContactID:J
    .end local v18           #tempDataID:J
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    .line 554
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    .line 555
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    .line 557
    const v3, 0x7f02070e

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 559
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 560
    invoke-virtual/range {p2 .. p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 561
    .local v12, deleteButton:Landroid/view/View;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 562
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 565
    const v3, 0x7f090332

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 568
    .local v14, itemNumTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    if-eqz v14, :cond_a

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :cond_a
    const v3, 0x7f090328

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d0351

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 573
    const v3, 0x7f090326

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->updateDoneButtonStatus()V

    goto/16 :goto_0

    .line 593
    .end local v12           #deleteButton:Landroid/view/View;
    .end local v14           #itemNumTextView:Landroid/widget/TextView;
    :cond_b
    if-nez p3, :cond_d

    .line 595
    const/16 v21, 0x0

    .line 596
    .local v21, voiceMailNumber:Ljava/lang/String;
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v21

    .line 598
    const-string v3, "SpeedDialListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voice mail number ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-eqz v21, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    .line 601
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "voicemail"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v13, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 603
    .local v13, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 608
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 606
    .end local v13           #intent:Landroid/content/Intent;
    :cond_c
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v13       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 609
    .end local v13           #intent:Landroid/content/Intent;
    .end local v21           #voiceMailNumber:Ljava/lang/String;
    :cond_d
    const v3, 0x7f090326

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 610
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    if-eqz v3, :cond_14

    .line 611
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    .line 612
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 614
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v5, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 618
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_e

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 619
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    .line 621
    :cond_e
    if-eqz v9, :cond_f

    .line 622
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 624
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDetailViewUri:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_name"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 627
    if-eqz v9, :cond_10

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 628
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 630
    :cond_10
    if-eqz v9, :cond_11

    .line 631
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_13

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0353

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 638
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0354

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_13
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 648
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    .line 650
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v5, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 655
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_18

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 657
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    .line 658
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    .line 659
    const-string v3, "number"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 660
    const-string v3, "type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 683
    .local v15, numberType:I
    invoke-static {v15}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_17

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 689
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageType:Landroid/widget/TextView;

    if-eqz v3, :cond_16

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessageType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_17

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->showDialog(I)V

    .line 700
    .end local v15           #numberType:I
    :cond_18
    if-eqz v9, :cond_1

    .line 701
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 704
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsFromDetail:Z

    if-eqz v3, :cond_1b

    .line 705
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    .line 706
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getOnePhoneNumberId()J

    move-result-wide v10

    .line 708
    .local v10, dataId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v10, v3

    if-nez v3, :cond_1a

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->doShowPicker()V

    goto/16 :goto_0

    .line 711
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->assignSpeedDial(J)V

    goto/16 :goto_0

    .line 714
    .end local v10           #dataId:J
    :cond_1b
    new-instance v13, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v3, "additional"

    const-string v4, "phone"

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string v3, "from_speed_dial"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 717
    const-string v3, "has_result"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 718
    const-string v3, "index"

    move/from16 v0, p3

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 721
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangedPosition:I

    .line 724
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    .line 1306
    :goto_0
    return v1

    .line 1278
    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 1284
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->finish()V

    goto :goto_0

    .line 1281
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1289
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->onCancelButtonClicked()V

    goto :goto_0

    .line 1292
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->onDoneButtonClicked()V

    goto :goto_0

    .line 1295
    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1298
    :sswitch_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1276
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_1
        0x7f0903b5 -> :sswitch_2
        0x7f0903d3 -> :sswitch_3
        0x7f0903d4 -> :sswitch_4
    .end sparse-switch

    .line 1278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 1245
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isListEmpty()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1251
    :goto_0
    return v0

    .line 1250
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->updateDoneButtonStatus()V

    .line 1251
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 437
    const-string v0, "misselected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    .line 438
    const-string v0, "moldindex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    .line 439
    const-string v0, "SpeedDialListMapNew"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    .line 441
    const-string v0, "SpeedDialListMapOrig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    .line 443
    const-string v0, "SpeedDialListDataMapNew"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    .line 445
    const-string v0, "SpeedDialListDataMapOrig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    .line 447
    const-string v0, "SpeedDialListDataMapNew"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 423
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->restartActivityInMode(I)V

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->populateUpdatedData()V

    .line 429
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->updateDoneButtonStatus()V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->notifyDataSetChanged()V

    .line 431
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->invalidateOptionsMenu()V

    .line 432
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1069
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 1070
    .local v0, texts:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1071
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1072
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1074
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 734
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 736
    const-string v0, "moldindex"

    iget v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    const-string v0, "misselected"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 739
    const-string v0, "DISPLAY_NAME"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v0, "NUMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v0, "TYPE"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "SELECTED_NAME"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedContactName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "SpeedDialListMapNew"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 744
    const-string v0, "SpeedDialListMapOrig"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 745
    const-string v0, "SpeedDialListDataMapNew"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 746
    const-string v0, "SpeedDialListDataMapOrig"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 748
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 457
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 463
    :cond_0
    return-void
.end method

.method public populateUpdatedData()V
    .locals 23

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v2, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    const-wide/16 v18, -0x1

    .line 345
    .local v18, rawContactId:J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 347
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_5

    .line 348
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 349
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 351
    const-string v2, "key_number"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 352
    .local v16, keyValue:I
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 353
    .local v17, position:I
    const-wide/16 v20, -0x1

    .line 354
    .local v20, speed_dial_data_id:J
    const-string v2, "speed_dial_data_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 355
    const-string v2, "raw_contact_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 359
    .local v12, cursor2:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 361
    .local v8, contactId:J
    if-eqz v12, :cond_2

    .line 362
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 364
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    packed-switch v2, :pswitch_data_1

    .line 388
    :cond_3
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 349
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 321
    .end local v8           #contactId:J
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #cursor2:Landroid/database/Cursor;
    .end local v13           #i:I
    .end local v16           #keyValue:I
    .end local v17           #position:I
    .end local v18           #rawContactId:J
    .end local v20           #speed_dial_data_id:J
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 327
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 328
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    if-eqz v2, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 335
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 336
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    if-eqz v2, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 369
    .restart local v8       #contactId:J
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #cursor2:Landroid/database/Cursor;
    .restart local v13       #i:I
    .restart local v16       #keyValue:I
    .restart local v17       #position:I
    .restart local v18       #rawContactId:J
    .restart local v20       #speed_dial_data_id:J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    add-int/lit8 v3, v17, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 372
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    add-int/lit8 v3, v17, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    add-int/lit8 v3, v17, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    if-eqz v2, :cond_3

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    add-int/lit8 v3, v17, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    add-int/lit8 v3, v17, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 380
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    add-int/lit8 v3, v17, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    add-int/lit8 v3, v17, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    if-eqz v2, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    add-int/lit8 v3, v17, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    add-int/lit8 v3, v17, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 390
    .end local v8           #contactId:J
    .end local v12           #cursor2:Landroid/database/Cursor;
    .end local v16           #keyValue:I
    .end local v17           #position:I
    .end local v20           #speed_dial_data_id:J
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 394
    .end local v13           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 395
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 397
    .local v10, contentResolver:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    const/16 v2, 0x64

    if-gt v13, v2, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 401
    .local v14, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    add-int/lit8 v15, v13, 0x1

    .line 406
    .local v15, keyNumber:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 407
    .local v22, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    .end local v14           #id:Ljava/lang/Long;
    .end local v15           #keyNumber:I
    .end local v22           #uri:Landroid/net/Uri;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 414
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mReloadData:Z

    .line 417
    .end local v10           #contentResolver:Landroid/content/ContentResolver;
    .end local v13           #i:I
    :cond_9
    return-void

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 367
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public restartActivityInMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->finish()V

    .line 1405
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1406
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigContactIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1407
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1408
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOrigDataIDCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1409
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1410
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1411
    const-string v1, "ReloadSpeedDial"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1412
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1413
    return-void
.end method

.method public setItemLayout(JLandroid/view/View;I)I
    .locals 9
    .parameter "contactId"
    .parameter "parentView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 803
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 806
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 807
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 808
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {p0, v6, v8, p3, p4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I

    move-result v7

    .line 810
    .local v7, resultCode:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 814
    .end local v7           #resultCode:I
    .end local v8           #uri:Landroid/net/Uri;
    :goto_0
    return v7

    :cond_0
    const/4 v7, -0x1

    goto :goto_0
.end method

.method public setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I
    .locals 17
    .parameter "cursor"
    .parameter "contactUri"
    .parameter "view"
    .parameter "position"

    .prologue
    .line 818
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_1

    .line 819
    :cond_0
    const/4 v13, 0x0

    .line 956
    :goto_0
    return v13

    .line 821
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 822
    .local v6, name:Ljava/lang/String;
    const-string v13, "has_phone_number"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 824
    .local v5, hasPhoneNumber:I
    if-nez v5, :cond_2

    .line 827
    const/4 v13, 0x0

    goto :goto_0

    .line 830
    :cond_2
    if-eqz p3, :cond_9

    .line 831
    const/4 v9, 0x0

    .line 832
    .local v9, photo:Landroid/graphics/Bitmap;
    const-string v13, "photo_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 834
    .local v10, photoId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/SoftReference;

    .line 835
    .local v11, photoRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-nez v11, :cond_a

    .line 837
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 845
    :goto_1
    if-eqz v9, :cond_3

    .line 846
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    new-instance v14, Ljava/lang/ref/SoftReference;

    invoke-direct {v14, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    :cond_3
    :goto_2
    const v13, 0x7f090326

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 871
    .local v12, photoView:Landroid/widget/ImageView;
    invoke-virtual/range {p3 .. p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 873
    .local v3, deleteButton:Landroid/view/View;
    if-nez v3, :cond_4

    .line 874
    const v13, 0x7f090330

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 875
    if-eqz v3, :cond_4

    .line 877
    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 880
    :cond_4
    const v13, 0x7f090328

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 881
    .local v7, nameView:Landroid/widget/TextView;
    const v13, 0x7f090332

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 883
    .local v8, numberView:Landroid/widget/TextView;
    if-nez v9, :cond_b

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 886
    .local v2, contactId:Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static/range {v13 .. v16}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 892
    .end local v2           #contactId:Ljava/lang/String;
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 895
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_c

    if-eqz p4, :cond_c

    .line 896
    if-eqz v3, :cond_5

    .line 897
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 899
    :cond_5
    new-instance v13, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7, v12}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 928
    if-eqz v3, :cond_6

    .line 929
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    :cond_6
    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    if-eqz v8, :cond_7

    .line 941
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, p4, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 945
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 946
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    move/from16 v0, p4

    if-ne v13, v0, :cond_8

    .line 947
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;

    .line 948
    const v13, 0x7f02070e

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 950
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I

    move/from16 v0, p4

    if-ne v13, v0, :cond_9

    .line 951
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 956
    .end local v3           #deleteButton:Landroid/view/View;
    .end local v7           #nameView:Landroid/widget/TextView;
    .end local v8           #numberView:Landroid/widget/TextView;
    .end local v9           #photo:Landroid/graphics/Bitmap;
    .end local v10           #photoId:Ljava/lang/Long;
    .end local v11           #photoRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v12           #photoView:Landroid/widget/ImageView;
    :cond_9
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 840
    .restart local v9       #photo:Landroid/graphics/Bitmap;
    .restart local v10       #photoId:Ljava/lang/Long;
    .restart local v11       #photoRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catch_0
    move-exception v4

    .line 842
    .local v4, exception:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 843
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 849
    .end local v4           #exception:Ljava/lang/OutOfMemoryError;
    :cond_a
    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #photo:Landroid/graphics/Bitmap;
    check-cast v9, Landroid/graphics/Bitmap;

    .line 851
    .restart local v9       #photo:Landroid/graphics/Bitmap;
    if-nez v9, :cond_3

    .line 852
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 862
    :goto_5
    if-eqz v9, :cond_3

    .line 863
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mBitmapCache:Ljava/util/HashMap;

    new-instance v14, Ljava/lang/ref/SoftReference;

    invoke-direct {v14, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 857
    :catch_1
    move-exception v4

    .line 859
    .restart local v4       #exception:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 860
    const/4 v9, 0x0

    goto :goto_5

    .line 889
    .end local v4           #exception:Ljava/lang/OutOfMemoryError;
    .restart local v3       #deleteButton:Landroid/view/View;
    .restart local v7       #nameView:Landroid/widget/TextView;
    .restart local v8       #numberView:Landroid/widget/TextView;
    .restart local v12       #photoView:Landroid/widget/ImageView;
    :cond_b
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 932
    :cond_c
    if-eqz v3, :cond_6

    .line 933
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public setItemLayout(Landroid/view/View;I)I
    .locals 12
    .parameter "parentView"
    .parameter "position"

    .prologue
    .line 750
    const/4 v8, 0x0

    .line 751
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 752
    .local v6, contactId:J
    const-wide/16 v10, -0x1

    .line 754
    .local v10, rawContactId:J
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 757
    if-eqz v8, :cond_1

    .line 758
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const-string v0, "raw_contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 760
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 766
    if-eqz v8, :cond_3

    .line 767
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 769
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_3
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-gez v0, :cond_6

    .line 773
    iget v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 775
    new-instance v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;

    invoke-direct {v9}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;-><init>()V

    .line 776
    .local v9, holder:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;
    const v0, 0x7f090326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    .line 777
    const v0, 0x7f090328

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mName:Landroid/widget/TextView;

    .line 778
    const v0, 0x7f090332

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    .line 782
    iget-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 783
    iget-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    :cond_4
    iget-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v1, 0x7f0d0351

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 786
    iget-object v0, v9, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 788
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 790
    .end local v9           #holder:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;
    :cond_5
    const/4 v0, 0x0

    .line 798
    :goto_0
    return v0

    .line 793
    :cond_6
    invoke-virtual {p0, v6, v7, p1, p2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(JLandroid/view/View;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 794
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 795
    const/4 v0, -0x1

    goto :goto_0

    .line 797
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpeedDialList:Landroid/widget/AbsListView;

    new-instance v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;-><init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 798
    const/4 v0, 0x0

    goto :goto_0
.end method
