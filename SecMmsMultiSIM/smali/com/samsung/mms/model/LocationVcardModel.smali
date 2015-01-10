.class public Lcom/samsung/mms/model/LocationVcardModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "LocationVcardModel.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# static fields
.field private static final MAP_FILENAME_EXTN:Ljava/lang/String; = ".jpg"

.field public static VCARD_VERSION:I


# instance fields
.field mVcard:Lcom/android/vcard/VCardEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    sput v0, Lcom/samsung/mms/model/LocationVcardModel;->VCARD_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 106
    const-string v2, "text"

    const-string v3, "text/x-vCard"

    const-string v4, "vcard.vcf"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    .line 107
    const-string v0, "NGM"

    const-string v1, "Location Vcard model Creation Started"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p2}, Lcom/samsung/mms/model/LocationVcardModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/mms/model/LocationVcardModel;->isLocation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/model/MediaModel;->mIsLocationMedia:Z

    .line 110
    const-string v0, "NGM"

    const-string v1, "Location Vcard model Creation End"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V
    .locals 0
    .parameter "context"
    .parameter "uri"
    .parameter "locationSrc"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/mms/model/LocationVcardModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 115
    const-string v2, "text"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    .line 116
    const-string v0, "NGM"

    const-string v1, "Location Vcard model Creation Started"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p4}, Lcom/samsung/mms/model/LocationVcardModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/mms/model/LocationVcardModel;->isLocation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/model/MediaModel;->mIsLocationMedia:Z

    .line 119
    const-string v0, "NGM"

    const-string v1, "Location Vcard model Creation End"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private initFromContentUri(ILandroid/net/Uri;)V
    .locals 6
    .parameter "version"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, localAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;
    const/4 v2, 0x0

    .line 168
    .local v2, stream:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 170
    if-eqz v2, :cond_0

    .line 172
    const-string v3, "ParseException"

    const-string v4, "Opened File"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p1, v2}, Lcom/samsung/mms/model/LocationVcardModel;->parseVcard(ILjava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 188
    :cond_0
    if-eqz v2, :cond_1

    .line 190
    const-string v3, "ParseException"

    const-string v4, "Closed File"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "NGM"

    const-string v4, "File Not Found"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    if-eqz v2, :cond_1

    .line 190
    const-string v3, "ParseException"

    const-string v4, "Closed File"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    .line 194
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 183
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    const-string v3, "NGM"

    const-string v4, "IO Exception"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    if-eqz v2, :cond_1

    .line 190
    const-string v3, "ParseException"

    const-string v4, "Closed File"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 193
    :catch_3
    move-exception v0

    goto :goto_1

    .line 188
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 190
    const-string v4, "ParseException"

    const-string v5, "Closed File"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 188
    :cond_2
    :goto_2
    throw v3

    .line 193
    :catch_4
    move-exception v0

    .line 194
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 193
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method private initFromFile(ILandroid/net/Uri;)V
    .locals 5
    .parameter "version"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, stream:Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 208
    const-string v2, "ParseException"

    const-string v3, "Opened File"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p1, v1}, Lcom/samsung/mms/model/LocationVcardModel;->parseVcard(ILjava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    if-eqz v1, :cond_1

    .line 220
    :try_start_1
    const-string v2, "ParseException"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v3, "Closed File"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 221
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 217
    if-eqz v1, :cond_1

    .line 220
    :try_start_6
    const-string v2, "ParseException"

    const-string v3, "Closed File"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 224
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 224
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    throw v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 220
    :try_start_7
    const-string v3, "ParseException"

    const-string v4, "Closed File"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 222
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    const v3, -0x3fffffff

    :try_start_0
    invoke-direct {p0, v3, p1}, Lcom/samsung/mms/model/LocationVcardModel;->initFromContentUri(ILandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Lcom/android/vcard/exception/VCardException;
    :try_start_1
    sget v3, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v3, p1}, Lcom/samsung/mms/model/LocationVcardModel;->initFromContentUri(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 137
    :catch_1
    move-exception v2

    .line 139
    .local v2, v:Lcom/android/vcard/exception/VCardException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0           #e:Lcom/android/vcard/exception/VCardException;
    .end local v2           #v:Lcom/android/vcard/exception/VCardException;
    :cond_1
    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const v3, -0x3fffffff

    :try_start_2
    invoke-direct {p0, v3, p1}, Lcom/samsung/mms/model/LocationVcardModel;->initFromFile(ILandroid/net/Uri;)V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 147
    :catch_2
    move-exception v0

    .line 152
    .restart local v0       #e:Lcom/android/vcard/exception/VCardException;
    :try_start_3
    sget v3, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v3, p1}, Lcom/samsung/mms/model/LocationVcardModel;->initFromFile(ILandroid/net/Uri;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 154
    :catch_3
    move-exception v2

    .line 156
    .restart local v2       #v:Lcom/android/vcard/exception/VCardException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static packlocationData(Lcom/samsung/mms/location/Place;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "paramPlace"
    .parameter "paramString1"
    .parameter "paramString2"

    .prologue
    .line 609
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 610
    :cond_0
    const-string v13, "NGM"

    const-string v14, "Before return from null"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v13, 0x0

    .line 685
    :goto_0
    return-object v13

    .line 614
    :cond_1
    new-instance v12, Lcom/android/vcard/VCardBuilder;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/vcard/VCardBuilder;-><init>(I)V

    .line 617
    .local v12, vCardBuilder:Lcom/android/vcard/VCardBuilder;
    const-string v13, "N"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v13, "FN"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v13, "GEO"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getLatitude()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getLongitude()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/16 v13, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, filename:Ljava/lang/String;
    const/4 v13, 0x0

    const/16 v14, 0x2e

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 625
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".jpg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 627
    const-string v13, "X-VZW-NGM-LOC"

    invoke-virtual {v12, v13, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    if-eqz p1, :cond_3

    .line 630
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 632
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 638
    :cond_2
    :goto_1
    const-string v13, "URL"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v7

    .line 642
    .local v7, phoneMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 643
    .local v8, phoneNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    .line 644
    .local v10, total:I
    const/4 v9, 0x0

    .line 645
    .local v9, primary:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v10, :cond_5

    .line 647
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 648
    .local v6, phone:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 649
    .local v11, type:I
    if-nez v3, :cond_4

    .line 650
    const/4 v9, 0x1

    .line 651
    :cond_4
    packed-switch v11, :pswitch_data_0

    .line 666
    const/4 v13, 0x7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v6, v9}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 645
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 633
    .end local v3           #i:I
    .end local v6           #phone:Ljava/lang/String;
    .end local v7           #phoneMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #phoneNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #primary:Z
    .end local v10           #total:I
    .end local v11           #type:I
    :catch_0
    move-exception v1

    .line 635
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 654
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v3       #i:I
    .restart local v6       #phone:Ljava/lang/String;
    .restart local v7       #phoneMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8       #phoneNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9       #primary:Z
    .restart local v10       #total:I
    .restart local v11       #type:I
    :pswitch_0
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v6, v9}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 658
    :pswitch_1
    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v6, v9}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 662
    :pswitch_2
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v6, v9}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 671
    .end local v6           #phone:Ljava/lang/String;
    .end local v11           #type:I
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v5, mPostalList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 673
    .local v4, mPostalAddr:Landroid/content/ContentValues;
    const-string v13, "data2"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    const-string v13, "is_primary"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    const-string v13, "is_primary"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    const-string v13, "data4"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v13, "data7"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getCity()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v13, "data8"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getState()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v13, "data10"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v13, "data9"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/Place;->getPostalCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v12, v5}, Lcom/android/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 684
    const-string v13, "NGM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VCARD Content ::::: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {v12}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseV21card(Ljava/io/InputStream;)V
    .locals 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 232
    const-string v3, "VCARDMODEL"

    const-string v4, "parseV21card Called"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 237
    .local v2, vCardParser:Lcom/android/vcard/VCardParser_V21;
    new-instance v1, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v1}, Lcom/android/vcard/VCardEntryConstructor;-><init>()V

    .line 239
    .local v1, vCardInterpreter:Lcom/android/vcard/VCardEntryConstructor;
    invoke-virtual {v1, p0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 241
    :try_start_0
    invoke-virtual {v2, p1, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private parseV30card(Ljava/io/InputStream;)V
    .locals 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 250
    const-string v3, "VCARDMODEL"

    const-string v4, "parseV30card Called"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    .line 254
    .local v2, vCardParser:Lcom/android/vcard/VCardParser_V30;
    new-instance v1, Lcom/android/vcard/VCardEntryConstructor;

    const v3, -0x3fffffff

    invoke-direct {v1, v3}, Lcom/android/vcard/VCardEntryConstructor;-><init>(I)V

    .line 256
    .local v1, vCardInterpreter:Lcom/android/vcard/VCardEntryConstructor;
    invoke-virtual {v1, p0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 258
    :try_start_0
    invoke-virtual {v2, p1, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private parseVcard(ILjava/io/InputStream;)V
    .locals 1
    .parameter "version"
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 268
    const v0, -0x3fffffff

    if-ne p1, v0, :cond_0

    .line 270
    invoke-direct {p0, p2}, Lcom/samsung/mms/model/LocationVcardModel;->parseV30card(Ljava/io/InputStream;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/mms/model/LocationVcardModel;->parseV21card(Ljava/io/InputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public checkContentRestriction()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 309
    return-void
.end method

.method public checkCreationMode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 313
    return-void
.end method

.method public checkResolution()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 318
    return-void
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getBirthday()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getContactNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 412
    iget-object v4, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v4, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-object v3

    .line 415
    :cond_1
    iget-object v4, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v1

    .line 416
    .local v1, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 418
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 420
    .local v2, phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 524
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getFamily()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getFormattedAddress()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 440
    iget-object v10, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v10, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-object v7

    .line 443
    :cond_1
    iget-object v10, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v4

    .line 444
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 447
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/vcard/VCardEntry$PostalData;

    .line 448
    .local v6, postalAddr:Lcom/android/vcard/VCardEntry$PostalData;
    if-eqz v6, :cond_0

    .line 450
    const-string v7, ""

    .line 452
    .local v7, s:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PostalData;->getExtendedAddress()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v9

    .line 454
    .local v9, street:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, city:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v8

    .line 456
    .local v8, state:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, postal:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PostalData;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, country:Ljava/lang/String;
    const-string v10, "NGM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Formatted address"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v10, "NGM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Formatted Street"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v10, "NGM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Formatted locality"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v10, "NGM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Formatted state"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v10, "NGM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Formatted postal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v10, "NGM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Formatted country"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 467
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 469
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 470
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 472
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 473
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 475
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 476
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 478
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 479
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 481
    :cond_6
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 482
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 489
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #city:Ljava/lang/String;
    .end local v2           #country:Ljava/lang/String;
    .end local v5           #postal:Ljava/lang/String;
    .end local v6           #postalAddr:Lcom/android/vcard/VCardEntry$PostalData;
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #street:Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v10, "#####.######"

    invoke-direct {v3, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 490
    .local v3, doubleFormatter:Ljava/text/DecimalFormat;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/mms/model/LocationVcardModel;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/mms/model/LocationVcardModel;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 491
    .restart local v7       #s:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    const/4 v0, 0x0

    .line 354
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getFormatted()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getImList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 504
    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 530
    const-wide/high16 v0, -0x4010

    .line 532
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getLatitude()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 537
    const-wide/high16 v0, -0x4010

    .line 539
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getLongitude()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getMapImageFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getMapImageFilename()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 335
    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getNickNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 389
    const/4 v0, 0x0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x0

    .line 499
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 511
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlaceBytes()[B
    .locals 17

    .prologue
    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 557
    const/4 v2, 0x0

    .line 597
    :goto_0
    return-object v2

    .line 559
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/vcard/VCardEntry$PostalData;

    .line 560
    .local v16, postalData:Lcom/android/vcard/VCardEntry$PostalData;
    if-eqz v16, :cond_2

    .line 563
    const-string v2, "NGM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/model/LocationVcardModel;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v2, "NGM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/model/LocationVcardModel;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v14

    .line 571
    .local v14, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 573
    .local v3, phoneMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v14, :cond_1

    .line 575
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 577
    .local v15, phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    invoke-virtual {v15}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 589
    invoke-virtual {v15}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 580
    :pswitch_0
    invoke-virtual {v15}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 583
    :pswitch_1
    invoke-virtual {v15}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 586
    :pswitch_2
    invoke-virtual {v15}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 594
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_1
    new-instance v1, Lcom/samsung/mms/location/Place;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/model/LocationVcardModel;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/model/LocationVcardModel;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/model/LocationVcardModel;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lcom/android/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/android/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/android/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lcom/android/vcard/VCardEntry$PostalData;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcom/android/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lcom/samsung/mms/location/Place;-><init>(Ljava/lang/String;Ljava/util/HashMap;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .local v1, p:Lcom/samsung/mms/location/Place;
    invoke-virtual {v1}, Lcom/samsung/mms/location/Place;->toByteArray()[B

    move-result-object v2

    goto/16 :goto_0

    .line 597
    .end local v1           #p:Lcom/samsung/mms/location/Place;
    .end local v3           #phoneMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14           #phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    const/4 v0, 0x0

    .line 348
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getSuffix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 602
    :cond_0
    const/4 v0, 0x0

    .line 603
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$WebsiteData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$WebsiteData;->getWebsite()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 517
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 0
    .parameter "evt"

    .prologue
    .line 305
    return-void
.end method

.method public isLocation()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 546
    iget-object v1, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v0

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getMapImageFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onEnd()V
    .locals 2

    .prologue
    .line 294
    const-string v0, "NGM"

    const-string v1, "VCard Parsing Over"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 287
    const-string v0, "NGM"

    const-string v1, "VCardEntry object received"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iput-object p1, p0, Lcom/samsung/mms/model/LocationVcardModel;->mVcard:Lcom/android/vcard/VCardEntry;

    .line 289
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "NGM"

    const-string v1, "VCard Parsing Started"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method
