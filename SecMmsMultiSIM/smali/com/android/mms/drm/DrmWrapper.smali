.class public Lcom/android/mms/drm/DrmWrapper;
.super Ljava/lang/Object;
.source "DrmWrapper.java"


# static fields
.field public static final ACQUIRE_DRM_INFO:I = 0xd

.field public static final ACTION_DISPLAY:I = 0x7

.field public static final ACTION_PLAY:I = 0x1

.field public static final CAN_HANDLE:I = 0xf

.field public static final CHECK_RIGHT_STATUS:I = 0x1

.field public static final CONVERT_DM2DCF:I = 0x6

.field public static final DATA_INVALID:I = -0x1

.field private static final DEBUG:Z = false

.field public static final DRM_FILE_INFO:I = 0x2

.field public static final GET_CONSTRAINTS:I = 0x0

.field public static final GET_HEADER_INFO:I = 0x4

.field public static final GET_OPTIONS_MENU:I = 0x3

.field public static final GET_ORIGINAL_MIME:I = 0x5

.field public static final IS_CONVERTED_FL:I = 0x9

.field public static final IS_DRM_FILE:I = 0xc

.field public static final LICENSE_CATEGORY:Ljava/lang/String; = "license_category"

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DrmWrapper"

.field public static final OMA_CD:I = 0x1

.field public static final OMA_FL:I = 0x0

.field public static final OMA_PLUGIN_MIME:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final OMA_SD:I = 0x3

.field public static final OMA_SSD:I = 0x2

.field public static final OMA_V1:I = 0x1

.field public static final OMA_V2:I = 0x2

.field public static final PERFORM_DLA:I = 0xa

.field public static final PROCESS_DRM_INFO:I = 0xe

.field static final PR_PLUGIN_MIME:Ljava/lang/String; = "audio/vnd.ms-playready.media.pya"

.field public static final SET_SECURE_CLOCK:I = 0x7

.field private static final TAG:Ljava/lang/String; = "DrmWrapper"

.field public static final TYPE_CONVERT_DRM_FILE:I = 0xb

.field public static final TYPE_POPUP_COUNT_REMAIN_1:I = 0x3

.field public static final TYPE_POPUP_COUNT_REMAIN_N:I = 0x4

.field public static final TYPE_POPUP_INVALID:I = 0x1

.field public static final TYPE_POPUP_NONE:I = 0x0

.field public static final TYPE_POPUP_RENDER_FIRST:I = 0x5

.field public static final TYPE_POPUP_UNKNOWN:I = -0x1

.field public static final TYPE_POPUP_UNLOCK:I = 0x2

.field public static final UPDATE_SECURE_CLOCK:I = 0x8

.field public static final isEnableOMA:Z

.field private static sDrmClient:Landroid/drm/DrmManagerClient;


# instance fields
.field errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mData:[B

.field private final mDataUri:Landroid/net/Uri;

.field public mDrmFileName:Ljava/lang/String;

.field public mDrmFilePath:Ljava/lang/String;

.field private mDrmMimeType:Ljava/lang/String;

.field private mDrmType:I

.field private mFilePath:Ljava/lang/String;

.field private mLicenseStatus:I

.field private mOrignalDrmMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/drm/DrmWrapper;->sDrmClient:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 24
    .parameter "drmContentType"
    .parameter "context"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mFilePath:Ljava/lang/String;

    .line 152
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmMimeType:Ljava/lang/String;

    .line 153
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mOrignalDrmMimeType:Ljava/lang/String;

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmType:I

    .line 155
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/drm/DrmWrapper;->mLicenseStatus:I

    .line 1003
    new-instance v2, Lcom/android/mms/drm/DrmWrapper$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/drm/DrmWrapper$1;-><init>(Lcom/android/mms/drm/DrmWrapper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 167
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    .line 168
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    .line 169
    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmWrapper : mDataUri="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 174
    .local v3, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 176
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 298
    if-eqz v9, :cond_0

    .line 299
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 300
    const/4 v9, 0x0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    :try_start_1
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    .line 179
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 181
    const-string v2, "cl"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    .line 183
    :cond_2
    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmWrapper : DRM filepath ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmWrapper : DRM fileName ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    if-nez v2, :cond_5

    .line 186
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Content-Type or data may not be null."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_4

    .line 299
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 300
    const/4 v9, 0x0

    :cond_4
    throw v2

    .line 189
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v11

    .line 196
    .local v11, drmClient:Landroid/drm/DrmManagerClient;
    const/4 v13, 0x0

    .line 197
    .local v13, extension:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 198
    .local v18, index:I
    if-ltz v18, :cond_6

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    add-int/lit8 v4, v18, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 202
    :cond_6
    const-string v2, "dcf"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 203
    const-string v2, "telephony/app_parts"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 204
    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extension info is wrong : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/drm/DrmWrapper;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 273
    .local v20, mimeType:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmMimeType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    if-eqz v20, :cond_8

    .line 277
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v11, v2, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 278
    .local v19, isDrmSupported:Z
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_8

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 280
    .local v21, original_mime_type:Ljava/lang/String;
    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Original Content Mime Type is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/drm/DrmWrapper;->registerDRMFile(Landroid/drm/DrmManagerClient;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 298
    .end local v19           #isDrmSupported:Z
    .end local v21           #original_mime_type:Ljava/lang/String;
    :cond_8
    :goto_2
    if-eqz v9, :cond_0

    .line 299
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 300
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 206
    .end local v20           #mimeType:Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    .line 208
    .local v10, destfile:Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/drm/DrmWrapper;->convertDM2DCF(Landroid/drm/DrmManagerClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 214
    if-eqz v10, :cond_d

    .line 216
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v5, values:Landroid/content/ContentValues;
    const/16 v22, 0x0

    .line 218
    .local v22, value1:Ljava/lang/Object;
    const/16 v23, 0x0

    .line 219
    .local v23, value2:Ljava/lang/Object;
    move-object/from16 v22, v10

    .line 220
    .local v22, value1:Ljava/lang/String;
    const-string v2, "cl"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 221
    .local v16, fileName:Ljava/lang/String;
    const/16 v17, 0x0

    .line 222
    .local v17, fileNameExtension:Ljava/lang/String;
    if-eqz v16, :cond_c

    .line 223
    const/16 v2, 0x2e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 224
    .local v14, extensionIndex:I
    if-ltz v14, :cond_a

    .line 225
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 228
    :cond_a
    const-string v2, "dm"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 229
    const-string v17, "dcf"

    .line 231
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 235
    .end local v14           #extensionIndex:I
    :cond_c
    move-object/from16 v23, v16

    .line 236
    .local v23, value2:Ljava/lang/String;
    const-string v2, "_data"

    check-cast v22, Ljava/lang/String;

    .end local v22           #value1:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "cl"

    check-cast v23, Ljava/lang/String;

    .end local v23           #value2:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 239
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v15, file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 242
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    .line 244
    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " destfile path!!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 246
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #fileNameExtension:Ljava/lang/String;
    :cond_d
    const-string v2, "DrmWrapper"

    const-string v4, " destfile null !!"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 249
    .end local v10           #destfile:Ljava/lang/String;
    :cond_e
    const-string v2, "dcf"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 250
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .restart local v5       #values:Landroid/content/ContentValues;
    const/16 v23, 0x0

    .line 252
    .local v23, value2:Ljava/lang/Object;
    const-string v2, "cl"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 253
    .restart local v16       #fileName:Ljava/lang/String;
    const/16 v17, 0x0

    .line 254
    .restart local v17       #fileNameExtension:Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 255
    const/16 v2, 0x2e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 256
    .restart local v14       #extensionIndex:I
    if-ltz v14, :cond_f

    .line 257
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 260
    :cond_f
    const-string v2, "dm"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 261
    const-string v17, "dcf"

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 264
    move-object/from16 v23, v16

    .line 265
    .local v23, value2:Ljava/lang/String;
    const-string v2, "cl"

    check-cast v23, Ljava/lang/String;

    .end local v23           #value2:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 284
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v14           #extensionIndex:I
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #fileNameExtension:Ljava/lang/String;
    .restart local v20       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 285
    .local v12, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException path = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method public static IsDrmFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "FilePath"

    .prologue
    .line 1108
    const/4 v3, 0x0

    .line 1110
    .local v3, ret:Z
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 1112
    .local v0, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v0, :cond_0

    .line 1113
    const/4 v4, 0x0

    .line 1123
    :goto_0
    return v4

    .line 1115
    :cond_0
    invoke-static {p0}, Lcom/android/mms/drm/DrmWrapper;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, mimeType:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1118
    invoke-virtual {v0, p0, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1119
    .local v1, isDrmSupported:Z
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1120
    const/4 v3, 0x1

    .end local v1           #isDrmSupported:Z
    :cond_1
    move v4, v3

    .line 1123
    goto :goto_0
.end method

.method public static IsDrmFileByExt(Ljava/lang/String;)Z
    .locals 2
    .parameter "FileName"

    .prologue
    .line 1092
    const/4 v0, 0x0

    .line 1093
    .local v0, nType:I
    const-string v1, ".dcf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".dm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1094
    :cond_0
    const/4 v0, 0x1

    .line 1101
    :goto_0
    if-lez v0, :cond_4

    .line 1102
    const/4 v1, 0x1

    .line 1104
    :goto_1
    return v1

    .line 1095
    :cond_1
    const-string v1, ".pyv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".pya"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".wmv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".wma"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1097
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1099
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1104
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static acquireLicense(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 354
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    .line 356
    .local v1, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v6

    .line 359
    :cond_1
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v7, 0x3

    const-string v8, "application/vnd.oma.drm.content"

    invoke-direct {v2, v7, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 361
    .local v2, mDrmInfoRequest_ILA:Landroid/drm/DrmInfoRequest;
    const-string v7, "drm_path"

    invoke-virtual {v2, v7, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v3

    .line 364
    .local v3, mDrmInfo_ILA:Landroid/drm/DrmInfo;
    if-nez v3, :cond_2

    .line 365
    const-string v7, "DrmWrapper"

    const-string v8, "mDrmInfo_ILA is null"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_2
    const-string v7, "URL"

    invoke-virtual {v3, v7}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 371
    .local v4, mLicense_url:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 372
    const-string v7, "DrmWrapper"

    const-string v8, "mLicense_Url is empty"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, browserIntent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 378
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 379
    .local v5, mUri:Landroid/net/Uri;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x1

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 382
    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    goto :goto_0
.end method

.method private convertDM2DCF(Landroid/drm/DrmManagerClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "drmClient"
    .parameter "path"

    .prologue
    .line 1021
    move-object v0, p2

    .line 1022
    .local v0, destFile:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1056
    .end local v0           #destFile:Ljava/lang/String;
    .local v1, destFile:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1025
    .end local v1           #destFile:Ljava/lang/String;
    .restart local v0       #destFile:Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/4 v6, 0x7

    const-string v7, "application/vnd.oma.drm.content"

    invoke-direct {v3, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1026
    .local v3, drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    const-string v6, "drm_path"

    invoke-virtual {v3, v6, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1027
    const-string v6, "status"

    const-string v7, "fail"

    invoke-virtual {v3, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1028
    const-string v6, "DrmWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mediascanner::getDrmFileType : Drm Info Request created with mimetype "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/drm/DrmInfoRequest;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const/4 v2, 0x0

    .line 1034
    .local v2, drmInfo:Landroid/drm/DrmInfo;
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1039
    :goto_1
    if-nez v2, :cond_1

    .line 1040
    const-string v6, "DrmWrapper"

    const-string v7, "convertDM2DCF() drmInfo is null"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 1041
    .end local v0           #destFile:Ljava/lang/String;
    .restart local v1       #destFile:Ljava/lang/String;
    goto :goto_0

    .line 1035
    .end local v1           #destFile:Ljava/lang/String;
    .restart local v0       #destFile:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1036
    .local v4, ex:Ljava/lang/IllegalArgumentException;
    const-string v6, "DrmWrapper"

    const-string v7, "IllegalArgumentException"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1044
    .end local v4           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string v6, "status"

    invoke-virtual {v2, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1045
    .local v5, status_req1:Ljava/lang/String;
    const-string v6, "DrmWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mediascanner::getDrmFileType : processRequest status is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v6, "success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1047
    const-string v6, "DrmWrapper"

    const-string v7, "Mediascanner::getDrmFileType :: acquireDrmInfo Success"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :goto_2
    const-string v6, "drm_path"

    invoke-virtual {v2, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1056
    .end local v0           #destFile:Ljava/lang/String;
    .restart local v1       #destFile:Ljava/lang/String;
    goto/16 :goto_0

    .line 1050
    .end local v1           #destFile:Ljava/lang/String;
    .restart local v0       #destFile:Ljava/lang/String;
    :cond_2
    const-string v6, "DrmWrapper"

    const-string v7, "Mediascanner::getDrmFileType :: acquireDrmInfo Fail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 943
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mFile"

    .prologue
    .line 903
    const-string v0, ""

    .line 917
    .local v0, mType:Ljava/lang/String;
    return-object v0
.end method

.method public static getDrmClient()Landroid/drm/DrmManagerClient;
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lcom/android/mms/drm/DrmWrapper;->sDrmClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/drm/DrmWrapper;->sDrmClient:Landroid/drm/DrmManagerClient;

    .line 310
    :cond_0
    sget-object v0, Lcom/android/mms/drm/DrmWrapper;->sDrmClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method public static getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "drmFilename"

    .prologue
    .line 959
    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    const-string v0, "application/vnd.oma.drm.content"

    .line 972
    :goto_0
    return-object v0

    .line 961
    :cond_0
    const-string v0, ".avi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    const-string v0, "video/mux/AVI"

    goto :goto_0

    .line 963
    :cond_1
    const-string v0, ".mkv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 964
    const-string v0, "video/mux/MKV"

    goto :goto_0

    .line 965
    :cond_2
    const-string v0, ".divx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 966
    const-string v0, "video/mux/DivX"

    goto :goto_0

    .line 967
    :cond_3
    const-string v0, ".pyv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".pya"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 968
    :cond_4
    const-string v0, "mime type for playready"

    goto :goto_0

    .line 969
    :cond_5
    const-string v0, ".wmv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".wma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 970
    :cond_6
    const-string v0, "mime type for WMDRM"

    goto :goto_0

    .line 972
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "drmFilename"

    .prologue
    .line 977
    const-string v0, ".dcf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const-string v0, "omadrm"

    .line 984
    :goto_0
    return-object v0

    .line 979
    :cond_0
    const-string v0, ".avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mkv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".divx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 980
    :cond_1
    const-string v0, "divx"

    goto :goto_0

    .line 981
    :cond_2
    const-string v0, ".pyv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".pya"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".wmv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".wma"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 982
    :cond_3
    const-string v0, "playready"

    goto :goto_0

    .line 984
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getForwordType(Ljava/lang/String;)I
    .locals 8
    .parameter "mFilePath"

    .prologue
    .line 1127
    const/4 v3, 0x0

    .line 1131
    .local v3, nType:I
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 1132
    .local v0, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v0, :cond_0

    .line 1133
    const/4 v5, 0x0

    .line 1151
    :goto_0
    return v5

    .line 1135
    :cond_0
    invoke-static {p0}, Lcom/android/mms/drm/DrmWrapper;->IsDrmFile(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1138
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v5, 0x11

    const-string v6, "application/vnd.oma.drm.content"

    invoke-direct {v2, v5, v6}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1139
    .local v2, drmInfoRequest_isconvertedfl:Landroid/drm/DrmInfoRequest;
    const-string v5, "drm_path"

    invoke-virtual {v2, v5, p0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1140
    const-string v5, "status"

    const-string v6, "fail"

    invoke-virtual {v2, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1141
    invoke-virtual {v0, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 1142
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    const-string v5, "result"

    invoke-virtual {v1, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1143
    .local v4, result:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1144
    const-string v5, "DrmWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file is FL/CD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const/4 v3, 0x1

    .end local v1           #drmInfo:Landroid/drm/DrmInfo;
    .end local v2           #drmInfoRequest_isconvertedfl:Landroid/drm/DrmInfoRequest;
    .end local v4           #result:Ljava/lang/String;
    :cond_1
    :goto_1
    move v5, v3

    .line 1151
    goto :goto_0

    .line 1147
    .restart local v1       #drmInfo:Landroid/drm/DrmInfo;
    .restart local v2       #drmInfoRequest_isconvertedfl:Landroid/drm/DrmInfoRequest;
    .restart local v4       #result:Ljava/lang/String;
    :cond_2
    const-string v5, "DrmWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file is SD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const/4 v3, 0x2

    goto :goto_1
.end method

.method private static getObjString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "o"

    .prologue
    .line 1083
    if-eqz p0, :cond_0

    .line 1084
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "mFilePath"

    .prologue
    .line 1155
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    .line 1156
    .local v1, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v1, :cond_1

    .line 1157
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1158
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 1159
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1168
    .end local v2           #index:I
    :goto_0
    return-object v0

    .line 1162
    .restart local v2       #index:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1165
    .end local v2           #index:I
    :cond_1
    invoke-virtual {v1, p0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    .local v0, contentType:Ljava/lang/String;
    const-string v3, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContentType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  DRM filepath ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPermission(Ljava/lang/String;)I
    .locals 9
    .parameter "filePath"

    .prologue
    const/4 v3, -0x1

    .line 445
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 446
    .local v0, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v0, :cond_0

    .line 486
    :goto_0
    return v3

    .line 449
    :cond_0
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0xf

    const-string v7, "application/vnd.oma.drm.content"

    invoke-direct {v2, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 450
    .local v2, drmInfoRequest_drmPermissionType:Landroid/drm/DrmInfoRequest;
    const-string v6, "drm_path"

    invoke-virtual {v2, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    invoke-virtual {v0, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 452
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    const-string v6, "status"

    invoke-virtual {v1, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, status:Ljava/lang/String;
    const-string v6, "DrmWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CDHandlerThread : InstallDrmMessage  processRequest status is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v6, "success"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 455
    const-string v6, "DrmWrapper"

    const-string v7, "acquireDrmInfo Success"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v3, -0x1

    .line 461
    .local v3, permissionType:I
    new-instance v6, Ljava/lang/String;

    const-string v7, "permission"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, strPermissionType:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 463
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 466
    :cond_1
    const-string v6, "DrmWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The permission type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    .end local v3           #permissionType:I
    .end local v5           #strPermissionType:Ljava/lang/String;
    :cond_2
    const-string v6, "DrmWrapper"

    const-string v7, "acquireDrmInfo Fail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isRightsFile(Ljava/lang/String;)Z
    .locals 7
    .parameter "filePath"

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, bValid:Z
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    .line 318
    .local v1, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v1, :cond_0

    .line 319
    const/4 v4, 0x0

    .line 343
    :goto_0
    return v4

    .line 321
    :cond_0
    invoke-static {p0}, Lcom/android/mms/drm/DrmWrapper;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 325
    .local v3, mLicenseStatus:I
    packed-switch v3, :pswitch_data_0

    .line 335
    const/4 v0, 0x1

    .end local v3           #mLicenseStatus:I
    :cond_1
    :goto_1
    move v4, v0

    .line 343
    goto :goto_0

    .line 327
    .restart local v3       #mLicenseStatus:I
    :pswitch_0
    const/4 v0, 0x1

    .line 328
    goto :goto_1

    .line 332
    :pswitch_1
    const/4 v0, 0x0

    .line 333
    goto :goto_1

    .line 338
    .end local v3           #mLicenseStatus:I
    :catch_0
    move-exception v2

    .line 339
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "DrmWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException, path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    goto :goto_1

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private launchBrowser(Ljava/lang/String;)V
    .locals 4
    .parameter "mLicenseUrl"

    .prologue
    .line 949
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    .local v0, browserIntent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 951
    .local v1, mUri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 952
    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 953
    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 955
    :cond_0
    return-void
.end method

.method private registerDRMFile(Landroid/drm/DrmManagerClient;Ljava/lang/String;)V
    .locals 6
    .parameter "drmClient"
    .parameter "path"

    .prologue
    .line 1060
    if-nez p1, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1063
    :cond_0
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x8

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v1, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1064
    .local v1, mDrmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v3, "drm_path"

    invoke-virtual {v1, v3, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    invoke-virtual {p1, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1067
    .local v0, mDrmInfo:Landroid/drm/DrmInfo;
    if-nez v0, :cond_1

    .line 1068
    const-string v3, "DrmWrapper"

    const-string v4, "Mediascanner::TYPE_REGISTER_DRM_FILE :: mDrmInfo is null. acquireDrmInfo Fail"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1072
    :cond_1
    const-string v3, "status"

    invoke-virtual {v0, v3}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    .local v2, status_req1:Ljava/lang/String;
    const-string v3, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mediascanner::TYPE_REGISTER_DRM_FILE : processRequest status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1075
    const-string v3, "DrmWrapper"

    const-string v4, "Mediascanner::TYPE_REGISTER_DRM_FILE :: acquireDrmInfo Success"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1078
    :cond_2
    const-string v3, "DrmWrapper"

    const-string v4, "Mediascanner::TYPE_REGISTER_DRM_FILE :: acquireDrmInfo Fail"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public buyDrmRight()V
    .locals 1

    .prologue
    .line 921
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 922
    .local v0, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v0, :cond_0

    .line 940
    :cond_0
    return-void
.end method

.method public consumeRights()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    const-string v11, "DrmWrapper"

    const-string v12, "consumeRights : DRM consumeRightStart~!!"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v3

    .line 604
    .local v3, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v3, :cond_0

    .line 605
    const/4 v11, 0x0

    .line 683
    :goto_0
    return v11

    .line 607
    :cond_0
    const/4 v0, 0x0

    .line 609
    .local v0, conoriginalMime:Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 615
    if-nez v0, :cond_1

    .line 616
    const/4 v11, 0x0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v6

    .line 611
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v11, "DrmWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "consumeRights - IllegalArgumentException path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v11, 0x0

    goto :goto_0

    .line 618
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v2, 0x0

    .line 619
    .local v2, cv:Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 620
    .local v8, nAction:I
    const-string v11, "image/"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 621
    const-string v11, "SISODRM "

    const-string v12, "DISPLAY"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v11, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    const/4 v12, 0x7

    invoke-virtual {v3, v11, v12}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 623
    const/4 v8, 0x7

    .line 631
    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 635
    .local v1, constraints:Ljava/lang/StringBuffer;
    if-eqz v2, :cond_6

    .line 636
    const-string v11, "license_category"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 637
    .local v7, licensecategory:Ljava/lang/String;
    const-string v11, "SISODRMTESTAPP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "licensecategory :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v11, "1"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 639
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Count Based: Max:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "max_repeat_count"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Available :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "remaining_repeat_count"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isAllowedToForward()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 653
    new-instance v5, Landroid/drm/DrmInfoRequest;

    const/16 v11, 0x1c

    iget-object v12, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmMimeType:Ljava/lang/String;

    invoke-direct {v5, v11, v12}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 654
    .local v5, drmrequset:Landroid/drm/DrmInfoRequest;
    const-string v11, "drm_path"

    iget-object v12, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 656
    .local v9, permissionType:Ljava/lang/String;
    const-string v11, "drmpermission_type"

    invoke-virtual {v5, v11, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    invoke-virtual {v3, v5}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v4

    .line 658
    .local v4, drminfo:Landroid/drm/DrmInfo;
    const-string v11, "status"

    invoke-virtual {v4, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 660
    .local v10, result:Ljava/lang/String;
    const-string v11, "success"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 661
    const-string v11, "DrmWrapper"

    const-string v12, "consumeRights Success"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 626
    .end local v1           #constraints:Ljava/lang/StringBuffer;
    .end local v4           #drminfo:Landroid/drm/DrmInfo;
    .end local v5           #drmrequset:Landroid/drm/DrmInfoRequest;
    .end local v7           #licensecategory:Ljava/lang/String;
    .end local v9           #permissionType:Ljava/lang/String;
    .end local v10           #result:Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 627
    const-string v11, "SISODRM "

    const-string v12, "PLAY"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 640
    .restart local v1       #constraints:Ljava/lang/StringBuffer;
    .restart local v7       #licensecategory:Ljava/lang/String;
    :cond_3
    const-string v11, "2"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 641
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DateTime Based: Start Time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "license_start_time"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Expiry Time :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "license_expiry_time"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 642
    :cond_4
    const-string v11, "0"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 643
    const-string v11, "Unlimited Consraint"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 646
    :cond_5
    const-string v11, "UNKNOWN Constraint"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 648
    .end local v7           #licensecategory:Ljava/lang/String;
    :cond_6
    const-string v11, "Constraints are null:Usually this comes for FL"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 664
    .restart local v4       #drminfo:Landroid/drm/DrmInfo;
    .restart local v5       #drmrequset:Landroid/drm/DrmInfoRequest;
    .restart local v7       #licensecategory:Ljava/lang/String;
    .restart local v9       #permissionType:Ljava/lang/String;
    .restart local v10       #result:Ljava/lang/String;
    :cond_7
    const-string v11, "DrmWrapper"

    const-string v12, "consumeRights Fail"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 669
    .end local v4           #drminfo:Landroid/drm/DrmInfo;
    .end local v5           #drmrequset:Landroid/drm/DrmInfoRequest;
    .end local v9           #permissionType:Ljava/lang/String;
    .end local v10           #result:Ljava/lang/String;
    :cond_8
    new-instance v5, Landroid/drm/DrmInfoRequest;

    const/16 v11, 0x1c

    iget-object v12, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmMimeType:Ljava/lang/String;

    invoke-direct {v5, v11, v12}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 670
    .restart local v5       #drmrequset:Landroid/drm/DrmInfoRequest;
    const-string v11, "drm_path"

    iget-object v12, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 671
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 672
    .restart local v9       #permissionType:Ljava/lang/String;
    const-string v11, "drmpermission_type"

    invoke-virtual {v5, v11, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    invoke-virtual {v3, v5}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v4

    .line 674
    .restart local v4       #drminfo:Landroid/drm/DrmInfo;
    const-string v11, "status"

    invoke-virtual {v4, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 676
    .restart local v10       #result:Ljava/lang/String;
    const-string v11, "success"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 677
    const-string v11, "DrmWrapper"

    const-string v12, "consumeRights Success"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 680
    :cond_9
    const-string v11, "DrmWrapper"

    const-string v12, "consumeRights Fail"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 879
    .local v0, drmClient:Landroid/drm/DrmManagerClient;
    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 881
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mContentType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    const-string v2, "DrmWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/drm/DrmWrapper;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  DRM filepath ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_0
    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mContentType:Ljava/lang/String;

    return-object v2

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "DrmWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDecryptedData()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    .line 502
    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v5, mfile:Ljava/io/File;
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 504
    .local v4, fileLength:Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 505
    const/4 v5, 0x0

    .line 507
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v13

    if-gtz v9, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-object v0

    .line 511
    :cond_1
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    .line 512
    .local v1, drmClient:Landroid/drm/DrmManagerClient;
    if-eqz v1, :cond_0

    .line 515
    const/4 v7, 0x1

    .line 517
    .local v7, rightStatus:I
    :try_start_0
    iget-object v9, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    const/4 v10, 0x7

    invoke-virtual {v1, v9, v10}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 522
    :goto_1
    if-eqz v7, :cond_2

    .line 523
    const-string v9, "DrmWrapper"

    const-string v10, "Rights not present. Handle here and show pop up for no license present"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :catch_0
    move-exception v3

    .line 519
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    const-string v9, "DrmWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IllegalArgumentException, path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 527
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :cond_2
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v9, 0xa

    iget-object v10, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmMimeType:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 528
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v9, "drm_path"

    iget-object v10, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    const-string v9, "LENGTH"

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v6

    .line 531
    .local v6, resultInfo:Landroid/drm/DrmInfo;
    const-string v9, "status"

    invoke-virtual {v6, v9}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 532
    .local v8, status_req1:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BitMapFactory::decodeFile : processRequest status is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    const-string v9, "success"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 534
    const-string v9, "DrmWrapper"

    const-string v10, "BitMapFactory::decodeFile :: acquireDrmInfo Success"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    if-eqz v6, :cond_3

    .line 539
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v9

    if-eqz v9, :cond_0

    .line 540
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v9

    array-length v9, v9

    new-array v0, v9, [B

    .line 541
    .local v0, decryptedData:[B
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v9

    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v9, v12, v0, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 546
    .end local v0           #decryptedData:[B
    :cond_3
    const-string v9, "DrmWrapper"

    const-string v10, "BitMapFactory::decodeFile ::custom api returned null"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :cond_4
    const-string v9, "DrmWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BitMapFactory::decodeFile :: FAIL reason is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "INFO"

    invoke-virtual {v6, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getOriginalData()[B
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 894
    const-string v0, "DrmWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmWrapper : mDataUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAllowedToForward()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 788
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 789
    .local v0, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v0, :cond_0

    .line 803
    :goto_0
    return v4

    .line 792
    :cond_0
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v5, 0x11

    const-string v6, "application/vnd.oma.drm.content"

    invoke-direct {v2, v5, v6}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 793
    .local v2, drmInfoRequest_isconvertedfl:Landroid/drm/DrmInfoRequest;
    const-string v5, "drm_path"

    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 794
    const-string v5, "status"

    const-string v6, "fail"

    invoke-virtual {v2, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 795
    invoke-virtual {v0, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 796
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    const-string v5, "result"

    invoke-virtual {v1, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, result:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 798
    const-string v4, "DrmWrapper"

    const-string v5, "file is FL/CD"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const/4 v4, 0x0

    goto :goto_0

    .line 802
    :cond_1
    const-string v5, "DrmWrapper"

    const-string v6, "file is SD"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isGetRightFromBrowser(Ljava/lang/String;)Z
    .locals 10
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 821
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    .line 822
    .local v1, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v1, :cond_0

    move v6, v7

    .line 840
    :goto_0
    return v6

    .line 827
    :cond_0
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0xe

    const-string v9, "application/vnd.oma.drm.content"

    invoke-direct {v3, v6, v9}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 828
    .local v3, drmrequset2:Landroid/drm/DrmInfoRequest;
    const-string v6, "drm_path"

    invoke-virtual {v3, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 829
    invoke-virtual {v1, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 830
    .local v2, drminfo2:Landroid/drm/DrmInfo;
    const-string v6, "version"

    invoke-virtual {v2, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 831
    .local v4, omaversion:I
    const-string v6, "type"

    invoke-virtual {v2, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 832
    .local v0, cdtype:I
    if-ne v0, v8, :cond_1

    .line 833
    const-string v5, "OMA_CD"

    .local v5, type:Ljava/lang/String;
    move v6, v7

    .line 834
    goto :goto_0

    .line 835
    .end local v5           #type:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x3

    if-eq v0, v6, :cond_2

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 836
    :cond_2
    const-string v5, "OMA_SD"

    .restart local v5       #type:Ljava/lang/String;
    move v6, v8

    .line 837
    goto :goto_0

    .line 839
    .end local v5           #type:Ljava/lang/String;
    :cond_3
    const-string v5, "OMA_FL"

    .restart local v5       #type:Ljava/lang/String;
    move v6, v7

    .line 840
    goto :goto_0
.end method

.method public isRightsInstalled(Ljava/lang/String;)Z
    .locals 6
    .parameter "drmFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 720
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    .line 722
    .local v1, drmClient:Landroid/drm/DrmManagerClient;
    if-nez v1, :cond_0

    .line 745
    :goto_0
    return v0

    .line 726
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/mms/drm/DrmWrapper;->mLicenseStatus:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    const/4 v0, 0x0

    .line 734
    .local v0, bValid:Z
    iget v3, p0, Lcom/android/mms/drm/DrmWrapper;->mLicenseStatus:I

    packed-switch v3, :pswitch_data_0

    .line 741
    const/4 v0, 0x1

    goto :goto_0

    .line 727
    .end local v0           #bValid:Z
    :catch_0
    move-exception v2

    .line 728
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRightsInstalled - IllegalArgumentException path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v0       #bValid:Z
    :pswitch_0
    const/4 v0, 0x0

    .line 739
    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
