.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedDialAdapter"
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1821
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1821
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1827
    const/16 v0, 0x9

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1832
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1837
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1857
    if-nez p2, :cond_1

    .line 1859
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040166

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1861
    new-instance v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {v7, p2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1873
    .local v7, holder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1880
    :goto_0
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[I

    move-result-object v3

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1883
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)I

    move-result v0

    add-int/lit8 v3, p1, 0x1

    if-ne v0, v3, :cond_3

    .line 1884
    const-string v0, "Emergency"

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v3, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoType:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$1300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1885
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    const v3, 0x7f0203b8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1886
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0203b9

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1887
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    const v3, 0x7f0203b7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1891
    :goto_1
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v3, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$1400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1892
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1893
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1894
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1895
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1896
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1897
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1996
    :cond_0
    :goto_2
    return-object p2

    .line 1878
    .end local v7           #holder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .restart local v7       #holder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    goto/16 :goto_0

    .line 1889
    :cond_2
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    const v3, 0x7f0203d2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 1901
    :cond_3
    if-eqz p1, :cond_e

    .line 1904
    const-wide/16 v8, -0x1

    .line 1905
    .local v8, rawContactId:J
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    .line 1907
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v3, p1, -0x1

    aget-wide v3, v0, v3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v5, p1, -0x1

    aget-wide v5, v0, v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    .line 1909
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v3, p1, -0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    .line 1912
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v3, p1, -0x1

    aget-wide v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_b

    .line 1914
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1900()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speed_dial_data_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 1918
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1920
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const-string v4, "raw_contact_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1922
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1941
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2000()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    .line 1943
    const-wide/16 v1, -0x1

    .line 1944
    .local v1, contactId:J
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    .line 1946
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1947
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1948
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1951
    :cond_8
    const-wide/16 v3, -0x1

    cmp-long v0, v8, v3

    if-lez v0, :cond_d

    .line 1953
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 1957
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    move-object v3, v7

    move-wide v4, v8

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;JI)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1975
    :goto_4
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1976
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1977
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    const v3, 0x7f0203a2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1978
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_a

    .line 1979
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1992
    .end local v1           #contactId:J
    .end local v8           #rawContactId:J
    :cond_a
    :goto_5
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1995
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto/16 :goto_2

    .line 1927
    .restart local v8       #rawContactId:J
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v3, p1, -0x1

    const-wide/16 v4, -0x1

    aput-wide v4, v0, v3

    .line 1928
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1900()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    .line 1929
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 1931
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1933
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const-string v4, "raw_contact_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1934
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v3, p1, -0x1

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const-string v6, "speed_dial_data_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 1937
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1972
    .restart local v1       #contactId:J
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0273

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1973
    .local v10, talkBackString:Ljava/lang/String;
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1985
    .end local v1           #contactId:J
    .end local v8           #rawContactId:J
    .end local v10           #talkBackString:Ljava/lang/String;
    :cond_e
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    const v3, 0x7f0203d3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1986
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v3, 0x7f0d0098

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1987
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1988
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1989
    iget-object v0, v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method
