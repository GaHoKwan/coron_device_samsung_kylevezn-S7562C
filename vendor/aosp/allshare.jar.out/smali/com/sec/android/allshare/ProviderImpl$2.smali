.class Lcom/sec/android/allshare/ProviderImpl$2;
.super Lcom/sec/android/allshare/AllShareResponseHandler;
.source "ProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/ProviderImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/ProviderImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/allshare/ProviderImpl$2;->this$0:Lcom/sec/android/allshare/ProviderImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method getItemType(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item$MediaType;
    .locals 3
    .parameter "b"

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    .line 278
    :goto_0
    return-object v2

    .line 270
    :cond_0
    const-string v2, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, typeStr:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 272
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {v1}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v0

    .line 275
    .local v0, result:Lcom/sec/android/allshare/Item$MediaType;
    if-nez v0, :cond_2

    .line 276
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 278
    :cond_2
    invoke-static {v1}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v2

    goto :goto_0
.end method

.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 31
    .parameter "cvm"

    .prologue
    .line 159
    if-nez p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v16

    .line 162
    .local v16, actionID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v27

    .line 163
    .local v27, resBundle:Landroid/os/Bundle;
    if-eqz v16, :cond_0

    if-eqz v27, :cond_0

    .line 166
    const-string v2, "BUNDLE_PARCELABLE_CONTENT_BUNDLE_ARRAYLIST"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 168
    .local v24, itemImpleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v24, :cond_2

    .line 169
    new-instance v24, Ljava/util/ArrayList;

    .end local v24           #itemImpleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .restart local v24       #itemImpleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_2
    const-string v2, "BUNDLE_INT_STARTINDEX"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 172
    .local v4, requestedStartIndex:I
    const-string v2, "BUNDLE_INT_REQUESTCOUNT"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 173
    .local v5, reqeustedCount:I
    const-string v2, "BUNDLE_BOOLEAN_ENDOFITEM"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 174
    .local v7, endOfItem:Z
    const-string v2, "BUNDLE_ENUM_ERROR"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v8

    .line 175
    .local v8, error:Lcom/sec/android/allshare/ERROR;
    const-string v2, "BUNDLE_STRING_ITEM_TYPE_ARRAYLIST"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    .line 178
    .local v25, itemTypeStrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v3, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    const/16 v30, 0x0

    .line 181
    .local v30, type:Lcom/sec/android/allshare/Item$MediaType;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    .line 182
    .local v17, b:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/ProviderImpl$2;->getItemType(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v30

    .line 183
    if-eqz v30, :cond_3

    .line 186
    sget-object v2, Lcom/sec/android/allshare/ProviderImpl$3;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v2, v2, v9

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    new-instance v2, Lcom/sec/android/allshare/AudioItemImpl;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/sec/android/allshare/AudioItemImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    :pswitch_1
    new-instance v2, Lcom/sec/android/allshare/ImageItemImpl;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/sec/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :pswitch_2
    new-instance v2, Lcom/sec/android/allshare/VideoItemImpl;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/sec/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :pswitch_3
    new-instance v2, Lcom/sec/android/allshare/FolderItemImpl;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/sec/android/allshare/FolderItemImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    .end local v17           #b:Landroid/os/Bundle;
    :cond_4
    const-string v2, "com.sec.android.allshare.action.ACTION_PROVIDER_REQUEST_SEARCHCRITERIA_ITEMS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_6

    .line 206
    const-string v2, "BUNDLE_STRING_SEARCHSTRING"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 207
    .local v28, searchString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/ProviderImpl$2;->this$0:Lcom/sec/android/allshare/ProviderImpl;

    #getter for: Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;
    invoke-static {v2}, Lcom/sec/android/allshare/ProviderImpl;->access$100(Lcom/sec/android/allshare/ProviderImpl;)Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    :try_start_0
    new-instance v18, Lcom/sec/android/allshare/media/SearchCriteria$Builder;

    invoke-direct/range {v18 .. v18}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;-><init>()V

    .line 212
    .local v18, builder:Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->setKeyword(Ljava/lang/String;)Lcom/sec/android/allshare/media/SearchCriteria$Builder;

    move-result-object v18

    .line 214
    if-eqz v25, :cond_5

    .line 215
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 216
    .local v23, iType:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v29

    .line 217
    .local v29, t:Lcom/sec/android/allshare/Item$MediaType;
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->addItemType(Lcom/sec/android/allshare/Item$MediaType;)Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 224
    .end local v18           #builder:Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    .end local v23           #iType:Ljava/lang/String;
    .end local v29           #t:Lcom/sec/android/allshare/Item$MediaType;
    :catch_0
    move-exception v20

    .line 225
    .local v20, e:Ljava/lang/Exception;
    const-string v2, "ProviderImpl"

    const-string v9, "mAllShareRespHandler.handleResponseMessage Exception"

    move-object/from16 v0, v20

    invoke-static {v2, v9, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 221
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v18       #builder:Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    :cond_5
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->build()Lcom/sec/android/allshare/media/SearchCriteria;

    move-result-object v6

    .line 222
    .local v6, criteria:Lcom/sec/android/allshare/media/SearchCriteria;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/ProviderImpl$2;->this$0:Lcom/sec/android/allshare/ProviderImpl;

    #getter for: Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;
    invoke-static {v2}, Lcom/sec/android/allshare/ProviderImpl;->access$100(Lcom/sec/android/allshare/ProviderImpl;)Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    move-result-object v2

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/media/SearchCriteria;ZLcom/sec/android/allshare/ERROR;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 227
    .end local v6           #criteria:Lcom/sec/android/allshare/media/SearchCriteria;
    .end local v18           #builder:Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    :catch_1
    move-exception v21

    .line 228
    .local v21, err:Ljava/lang/Error;
    const-string v2, "ProviderImpl"

    const-string v9, "mAllShareRespHandler.handleResponseMessage Error"

    move-object/from16 v0, v21

    invoke-static {v2, v9, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto/16 :goto_0

    .line 233
    .end local v21           #err:Ljava/lang/Error;
    .end local v28           #searchString:Ljava/lang/String;
    :cond_6
    const-string v2, "com.sec.android.allshare.action.ACTION_PROVIDER_REQUEST_ITEMS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_0

    .line 234
    const-string v2, "BUNDLE_PARCELABLE_FOLDERITEM"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/os/Bundle;

    .line 236
    .local v19, bundleFolder:Landroid/os/Bundle;
    const/4 v13, 0x0

    .line 238
    .local v13, requestedFolderItem:Lcom/sec/android/allshare/FolderItemImpl;
    if-eqz v19, :cond_8

    .line 239
    const-string v2, "BUNDLE_STRING_OBJECT_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 241
    .local v26, objID:Ljava/lang/String;
    if-eqz v26, :cond_7

    const-string v2, "0"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 242
    :cond_7
    new-instance v13, Lcom/sec/android/allshare/ProviderImpl$RootFolderItem;

    .end local v13           #requestedFolderItem:Lcom/sec/android/allshare/FolderItemImpl;
    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/sec/android/allshare/ProviderImpl$RootFolderItem;-><init>(Landroid/os/Bundle;)V

    .line 248
    .end local v26           #objID:Ljava/lang/String;
    .restart local v13       #requestedFolderItem:Lcom/sec/android/allshare/FolderItemImpl;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/ProviderImpl$2;->this$0:Lcom/sec/android/allshare/ProviderImpl;

    #getter for: Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;
    invoke-static {v2}, Lcom/sec/android/allshare/ProviderImpl;->access$200(Lcom/sec/android/allshare/ProviderImpl;)Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 252
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/ProviderImpl$2;->this$0:Lcom/sec/android/allshare/ProviderImpl;

    #getter for: Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;
    invoke-static {v2}, Lcom/sec/android/allshare/ProviderImpl;->access$200(Lcom/sec/android/allshare/ProviderImpl;)Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    move-result-object v9

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v14, v7

    move-object v15, v8

    invoke-interface/range {v9 .. v15}, Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;->onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/Item;ZLcom/sec/android/allshare/ERROR;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 255
    :catch_2
    move-exception v20

    .line 256
    .restart local v20       #e:Ljava/lang/Exception;
    const-string v2, "ProviderImpl"

    const-string v9, "mAllShareRespHandler.handleResponseMessage Exception"

    move-object/from16 v0, v20

    invoke-static {v2, v9, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 244
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v26       #objID:Ljava/lang/String;
    :cond_9
    new-instance v13, Lcom/sec/android/allshare/FolderItemImpl;

    .end local v13           #requestedFolderItem:Lcom/sec/android/allshare/FolderItemImpl;
    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/sec/android/allshare/FolderItemImpl;-><init>(Landroid/os/Bundle;)V

    .restart local v13       #requestedFolderItem:Lcom/sec/android/allshare/FolderItemImpl;
    goto :goto_3

    .line 258
    .end local v26           #objID:Ljava/lang/String;
    :catch_3
    move-exception v21

    .line 259
    .restart local v21       #err:Ljava/lang/Error;
    const-string v2, "ProviderImpl"

    const-string v9, "mAllShareRespHandler.handleResponseMessage Error"

    move-object/from16 v0, v21

    invoke-static {v2, v9, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
