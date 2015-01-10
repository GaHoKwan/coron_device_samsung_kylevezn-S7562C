.class public abstract Lcom/android/contacts/list/ContactListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "ContactListAdapter.java"


# static fields
.field protected static final FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

.field protected static final FILTER_PROJECTION:[Ljava/lang/String;

.field protected static final FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

.field protected static final PROJECTION_CONTACT:[Ljava/lang/String;

.field protected static final PROJECTION_DATA:[Ljava/lang/String;


# instance fields
.field private checkBoxAnimationStartTimeMilis:J

.field protected mAlternativeDisplayNameColumnIndex:I

.field protected mDisplayNameColumnIndex:I

.field public mIsItemViewLayerTypeSoftware:Z

.field private mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    .line 83
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->PROJECTION_DATA:[Ljava/lang/String;

    .line 102
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->FILTER_PROJECTION:[Ljava/lang/String;

    .line 124
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    .line 145
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pictureData"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "company"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mIsItemViewLayerTypeSoftware:Z

    .line 214
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    .line 217
    :cond_0
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 218
    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activateRcsPinner(Z)V
    .locals 2
    .parameter "activate"

    .prologue
    .line 794
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iput-boolean p1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    .line 797
    :cond_0
    return-void
.end method

.method protected bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 644
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iget-boolean v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    if-eqz v1, :cond_1

    .line 646
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 647
    .local v0, currentPosition:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 648
    add-int/lit8 v0, v0, 0x1

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->pinGetViewBeforeBindView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/net/Uri;)V

    .line 654
    .end local v0           #currentPosition:I
    :cond_1
    const/16 v1, 0xd

    invoke-virtual {p1, p2, v1}, Lcom/android/contacts/list/ContactListItemView;->showAccountIcons(Landroid/database/Cursor;I)V

    .line 657
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iget-boolean v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->pinBindViewEnd(Landroid/view/View;)V

    .line 661
    :cond_2
    return-void
.end method

.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V
    .locals 0
    .parameter "view"
    .parameter "isChecked"

    .prologue
    .line 618
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->showCheckBox(Z)V

    .line 619
    return-void
.end method

.method protected bindGalPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 510
    invoke-virtual {p1, v11}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 511
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 515
    const-string v9, "pictureData"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .local v8, pictureIndex:I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 516
    const/4 v7, 0x0

    .line 517
    .local v7, pictureDataByte:[B
    const/4 v0, 0x0

    .line 519
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 520
    .local v6, pictureData:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 521
    const-string v9, "gal_search_show_more"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 547
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v6           #pictureData:Ljava/lang/String;
    .end local v7           #pictureDataByte:[B
    :goto_0
    return-void

    .line 525
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v6       #pictureData:Ljava/lang/String;
    .restart local v7       #pictureDataByte:[B
    :cond_0
    const/4 v9, 0x0

    :try_start_0
    invoke-static {v6, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 526
    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {v7, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 527
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    const/4 v7, 0x0

    .line 532
    const/4 v6, 0x0

    .line 533
    const/4 v0, 0x0

    .line 534
    goto :goto_0

    .line 528
    :catch_0
    move-exception v3

    .line 529
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    const/4 v7, 0x0

    .line 532
    const/4 v6, 0x0

    .line 533
    const/4 v0, 0x0

    .line 534
    goto :goto_0

    .line 531
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    const/4 v7, 0x0

    .line 532
    const/4 v6, 0x0

    .line 533
    const/4 v0, 0x0

    throw v9

    .line 537
    :cond_1
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 538
    .local v1, contactId:J
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10, v4, v11}, Lcom/android/contacts/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 542
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #contactId:J
    .end local v6           #pictureData:Ljava/lang/String;
    .end local v7           #pictureDataByte:[B
    :cond_2
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 543
    .restart local v1       #contactId:J
    const/16 v9, 0x8

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, photoUriString:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 545
    .local v4, photoUri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10, v4, v11}, Lcom/android/contacts/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 544
    .end local v4           #photoUri:Landroid/net/Uri;
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1
.end method

.method protected bindGalTitleAndCompany(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v6, -0x1

    .line 553
    const/4 v4, 0x0

    .line 554
    .local v4, titleData:Ljava/lang/String;
    const/4 v2, 0x0

    .line 556
    .local v2, companyData:Ljava/lang/String;
    const-string v5, "title"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, TitleIndex:I
    if-eq v1, v6, :cond_0

    .line 557
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 559
    :cond_0
    const-string v5, "company"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, CompanyIndex:I
    if-eq v0, v6, :cond_1

    .line 560
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 563
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .local v3, titleAndCompanyName:Ljava/lang/StringBuilder;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 566
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 575
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/contacts/list/ContactListItemView;->showGalTitleAndCompany(Ljava/lang/String;)V

    .line 576
    return-void

    .line 567
    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_5

    .line 569
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0

    .line 570
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    :cond_6
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 572
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0
.end method

.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getHugeFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    .line 586
    :goto_0
    iget v2, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    iget v3, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IIZI)V

    .line 588
    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    .line 589
    return-void

    .line 583
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    goto :goto_0
.end method

.method protected bindNameAsGalSearchShowMore(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getHugeFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    .line 600
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->showDisplayNameAsGalSearchShowMore()V

    .line 601
    return-void

    .line 597
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    goto :goto_0
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x7

    const/4 v4, 0x0

    .line 479
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListAdapter;->isPhotoSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 507
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_DisableContactPhoto"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    goto :goto_0

    .line 492
    :cond_1
    const-wide/16 v2, 0x0

    .line 493
    .local v2, photoId:J
    invoke-interface {p3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 494
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 498
    :cond_2
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 499
    .local v5, contactId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3

    .line 500
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    goto :goto_0

    .line 502
    :cond_3
    const/16 v0, 0x8

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 503
    .local v8, photoUriString:Ljava/lang/String;
    if-nez v8, :cond_4

    const/4 v7, 0x0

    .line 505
    .local v7, photoUri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    goto :goto_0

    .line 503
    .end local v7           #photoUri:Landroid/net/Uri;
    :cond_4
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1
.end method

.method protected bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 605
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_DisableSnsInfoInListView"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x5

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showPresenceAndStatusMessage(Landroid/database/Cursor;II)V

    .line 610
    :cond_0
    return-void
.end method

.method protected bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 613
    const/16 v0, 0xf

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    .line 614
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "position"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 452
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 453
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 455
    .local v0, placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 458
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactsCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    .line 469
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 470
    iget-boolean v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 476
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :goto_2
    return-void

    .line 461
    .restart local v0       #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_2
    if-eqz p3, :cond_1

    .line 462
    if-nez p2, :cond_3

    const/16 v2, 0xe

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 463
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactsCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 465
    :cond_3
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 470
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 472
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_5
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 474
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected bindStarredIcon(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 665
    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showStarredIcon(Landroid/database/Cursor;I)V

    .line 666
    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 751
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 754
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/16 v3, 0x9

    if-gt v2, v3, :cond_1

    .line 757
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->setProfileExists(Z)V

    .line 771
    :goto_0
    return-void

    .line 760
    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 761
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 762
    const/16 v2, 0xe

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->setProfileExists(Z)V

    goto :goto_0

    .line 768
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 762
    goto :goto_1

    .line 765
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->setProfileExists(Z)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->pinOnDestroy()V

    .line 791
    :cond_0
    return-void
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 4
    .parameter "position"

    .prologue
    .line 258
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    iget v3, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, displayName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    iget v3, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    .end local v0           #displayName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, e:Landroid/database/StaleDataException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactLookupKey(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 311
    .local v1, partitionIndex:I
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 312
    .local v0, item:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactLookupKey(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContactLookupKey(ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 317
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "position"

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 287
    .local v1, partitionIndex:I
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 288
    .local v0, item:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    :cond_0
    const/4 v2, 0x0

    .line 290
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 9
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 295
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 296
    :cond_0
    const/4 v5, 0x0

    .line 305
    :cond_1
    :goto_0
    return-object v5

    .line 297
    :cond_2
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 298
    .local v0, contactId:J
    const/16 v6, 0x9

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 300
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 301
    .local v2, directoryId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    .line 302
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method public getFirstContactUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v3

    .line 728
    .local v3, partitionCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 729
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .line 730
    .local v2, partition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 728
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 735
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 739
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    .line 746
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #partition:Lcom/android/contacts/list/DirectoryPartition;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getHasPhoneNumber(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedContactDirectoryId()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    return-wide v0
.end method

.method public getSelectedContactId()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    return-wide v0
.end method

.method public getSelectedContactLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedContactPosition()I
    .locals 14

    .prologue
    .line 669
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-nez v10, :cond_1

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 670
    const/4 v9, -0x1

    .line 719
    :cond_0
    :goto_0
    return v9

    .line 673
    :cond_1
    const/4 v2, 0x0

    .line 674
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 675
    .local v8, partitionIndex:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v7

    .line 676
    .local v7, partitionCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 677
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    .line 678
    .local v6, partition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 679
    move v8, v3

    .line 683
    .end local v6           #partition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    const/4 v10, -0x1

    if-ne v8, v10, :cond_4

    .line 684
    const/4 v9, -0x1

    goto :goto_0

    .line 676
    .restart local v6       #partition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 687
    .end local v6           #partition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    .line 688
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 689
    :cond_5
    const/4 v9, -0x1

    goto :goto_0

    .line 692
    :cond_6
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 693
    const/4 v5, -0x1

    .line 694
    .local v5, offset:I
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 695
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-eqz v10, :cond_9

    .line 696
    const/16 v10, 0x9

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 697
    .local v4, lookupKey:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 698
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 711
    .end local v4           #lookupKey:Ljava/lang/String;
    :cond_8
    :goto_2
    const/4 v10, -0x1

    if-ne v5, v10, :cond_b

    .line 712
    const/4 v9, -0x1

    goto :goto_0

    .line 702
    :cond_9
    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    .line 704
    :cond_a
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 705
    .local v0, contactId:J
    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    cmp-long v10, v0, v10

    if-nez v10, :cond_7

    .line 706
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 707
    goto :goto_2

    .line 715
    .end local v0           #contactId:J
    :cond_b
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getPositionForPartition(I)I

    move-result v10

    add-int v9, v10, v5

    .line 716
    .local v9, position:I
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->hasHeader(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 717
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public getUnknownNameText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 442
    if-eqz p4, :cond_0

    move-object v0, p4

    .line 443
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 444
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isVoLTEEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setVoLTEEnabled(Z)V

    .line 447
    .end local v0           #view:Lcom/android/contacts/list/ContactListItemView;
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListAdapter;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected hideCheckBox(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 633
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hideCheckBox()V

    .line 634
    return-void
.end method

.method public isContactStarred(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactWritable(I)Z
    .locals 11
    .parameter "position"

    .prologue
    .line 343
    iget-object v9, p0, Lcom/android/contacts/list/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 344
    .local v1, accountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    const/16 v10, 0xd

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, linkColumnString:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v2, accountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v4, dataSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6, v2, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 349
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 350
    .local v7, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 351
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    .local v0, accountType:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 353
    .local v3, dataSet:Ljava/lang/String;
    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v8

    .line 354
    .local v8, type:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v8}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 355
    const/4 v9, 0x1

    .line 358
    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v8           #type:Lcom/android/contacts/model/AccountType;
    :goto_1
    return v9

    .line 350
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v3       #dataSet:Ljava/lang/String;
    .restart local v8       #type:Lcom/android/contacts/model/AccountType;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 358
    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v8           #type:Lcom/android/contacts/model/AccountType;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z
    .locals 5
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 410
    iget v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, displayName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    :cond_0
    iget v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    :cond_1
    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const-string v1, "gal_search_show_more"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    const/4 v1, 0x1

    .line 421
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGooglePlusAccount(I)Z
    .locals 8
    .parameter "position"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    const/16 v7, 0xd

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, linkColumnString:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v0, accountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v2, dataSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v4, v0, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 366
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 367
    .local v5, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 368
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    .local v1, dataSet:Ljava/lang/String;
    const-string v6, "plus"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 370
    const/4 v6, 0x1

    .line 372
    .end local v1           #dataSet:Ljava/lang/String;
    :goto_1
    return v6

    .line 367
    .restart local v1       #dataSet:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    .end local v1           #dataSet:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public isSelectedContact(ILandroid/database/Cursor;)Z
    .locals 10
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 328
    .local v0, directoryId:J
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactDirectoryId()J

    move-result-wide v6

    cmp-long v3, v6, v0

    if-eqz v3, :cond_0

    .line 337
    :goto_0
    return v5

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, lookupKey:Ljava/lang/String;
    if-eqz v2, :cond_1

    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v4

    .line 334
    goto :goto_0

    .line 337
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactId()J

    move-result-wide v6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method public isSim2Contact(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 396
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 397
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 398
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, link:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    const/4 v2, 0x1

    .line 405
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #link:Ljava/lang/String;
    :goto_0
    return v2

    .line 403
    :catch_0
    move-exception v2

    .line 405
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSimContact(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 379
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 380
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, link:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 385
    const/4 v2, 0x1

    .line 390
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #link:Ljava/lang/String;
    :goto_0
    return v2

    .line 388
    :catch_0
    move-exception v2

    .line 390
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 427
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    invoke-direct {v0, p1, v2}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 428
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 430
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isSelectionVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 431
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isVoLTEEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setVoLTEEnabled(Z)V

    .line 433
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mIsItemViewLayerTypeSoftware:Z

    if-eqz v1, :cond_0

    .line 434
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 436
    :cond_0
    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 775
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->pinOnPause()V

    .line 779
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 781
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->pinOnResume()V

    .line 785
    :cond_0
    return-void
.end method

.method public setCheckBoxAnimationStartTimeMilis(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 628
    iput-wide p1, p0, Lcom/android/contacts/list/ContactListAdapter;->checkBoxAnimationStartTimeMilis:J

    .line 629
    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 3
    .parameter "displayOrder"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 271
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 273
    iput v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    .line 274
    iput v2, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    iput v2, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    .line 277
    iput v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    goto :goto_0
.end method

.method public setItemViewLayerTypeSoftware(Z)V
    .locals 0
    .parameter "isTwoPaneMode"

    .prologue
    .line 801
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListAdapter;->mIsItemViewLayerTypeSoftware:Z

    .line 802
    return-void
.end method

.method public setSelectedContact(JLjava/lang/String;J)V
    .locals 0
    .parameter "selectedDirectoryId"
    .parameter "lookupKey"
    .parameter "contactId"

    .prologue
    .line 237
    iput-wide p1, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    .line 238
    iput-object p3, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 239
    iput-wide p4, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    .line 240
    return-void
.end method
