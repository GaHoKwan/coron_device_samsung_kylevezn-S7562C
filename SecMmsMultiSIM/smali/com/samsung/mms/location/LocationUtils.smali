.class public Lcom/samsung/mms/location/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationUtils"

.field static final TWO_MINUTES:I = 0x1d4c0

.field public static final VZNAV_PACKAGE_URI:Ljava/lang/String;

.field public static final deviceModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/samsung/mms/location/LocationUtils;->deviceModel:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id=com.navbuilder.app.atlasbook."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/mms/location/LocationUtils;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/mms/location/LocationUtils;->VZNAV_PACKAGE_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findFileGeoCoordinates(Landroid/net/Uri;Landroid/content/Context;[F)V
    .locals 7
    .parameter "mediaUri"
    .parameter "appContext"
    .parameter "latAndLon"

    .prologue
    const/4 v6, 0x0

    .line 180
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, imageFilePath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 186
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, imageEXIFData:Landroid/media/ExifInterface;
    invoke-virtual {v0, p2}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v3

    .line 189
    .local v3, latLonFound:Z
    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/samsung/mms/location/LocationUtils;->isValidGeoCoordinates([F)Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    :cond_0
    const v4, 0x7f0a0403

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0           #imageEXIFData:Landroid/media/ExifInterface;
    .end local v3           #latLonFound:Z
    :cond_1
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v2

    .line 199
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    const v4, 0x7f0a0408

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 208
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_2
    const v4, 0x7f0a0407

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static findMediaContentGeoCoordinates(Landroid/net/Uri;Landroid/content/Context;[F)V
    .locals 13
    .parameter "mediaUri"
    .parameter "appContext"
    .parameter "latAndLon"

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/samsung/mms/location/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 228
    .local v11, mediaCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 232
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    :cond_0
    const v0, 0x7f0a0406

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_1
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 281
    :goto_1
    return-void

    .line 241
    :cond_2
    :try_start_1
    const-string v0, "latitude"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 242
    .local v9, latIndex:I
    const-string v0, "longitude"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 243
    .local v10, lonIndex:I
    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 245
    .local v7, dataIndex:I
    const/4 v0, -0x1

    if-eq v0, v9, :cond_3

    const/4 v0, -0x1

    if-eq v0, v10, :cond_3

    const/4 v0, -0x1

    if-eq v0, v7, :cond_3

    .line 247
    const/4 v0, 0x0

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    aput v1, p2, v0

    .line 248
    const/4 v0, 0x1

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    aput v1, p2, v0

    .line 250
    invoke-static {p2}, Lcom/samsung/mms/location/LocationUtils;->isValidGeoCoordinates([F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 253
    .local v8, fileMediaUri:Landroid/net/Uri;
    invoke-static {v8, p1, p2}, Lcom/samsung/mms/location/LocationUtils;->findFileGeoCoordinates(Landroid/net/Uri;Landroid/content/Context;[F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 265
    .end local v7           #dataIndex:I
    .end local v8           #fileMediaUri:Landroid/net/Uri;
    .end local v9           #latIndex:I
    .end local v10           #lonIndex:I
    :catch_0
    move-exception v12

    .line 267
    .local v12, sqlException:Landroid/database/SQLException;
    :try_start_2
    const-string v0, "LocationUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findMediaContentGeoCoordinates(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 271
    .end local v12           #sqlException:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 258
    .restart local v7       #dataIndex:I
    .restart local v9       #latIndex:I
    .restart local v10       #lonIndex:I
    :cond_3
    const v0, 0x7f0a0405

    :try_start_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 276
    .end local v7           #dataIndex:I
    .end local v9           #latIndex:I
    .end local v10           #lonIndex:I
    :cond_4
    const v0, 0x7f0a0404

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method private static floatComp(FF)Z
    .locals 3
    .parameter "float1"
    .parameter "float2"

    .prologue
    .line 396
    const v0, 0x38d1b717

    .line 397
    .local v0, valDiff:F
    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPlacesObject(Landroid/app/Activity;Landroid/net/Uri;)Lcom/samsung/mms/location/Place;
    .locals 8
    .parameter "activity"
    .parameter "mediaUri"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, appContext:Landroid/content/Context;
    invoke-static {p1, v0}, Lcom/samsung/mms/location/LocationUtils;->retrieveGeocoordinates(Landroid/net/Uri;Landroid/content/Context;)[F

    move-result-object v1

    .line 72
    .local v1, latAndLon:[F
    const/4 v3, 0x0

    .line 74
    .local v3, placeFromLatLon:Lcom/samsung/mms/location/Place;
    if-eqz v1, :cond_0

    .line 75
    aget v4, v1, v6

    invoke-static {v4, v5}, Lcom/samsung/mms/location/LocationUtils;->floatComp(FF)Z

    move-result v4

    if-nez v4, :cond_0

    aget v4, v1, v7

    invoke-static {v4, v5}, Lcom/samsung/mms/location/LocationUtils;->floatComp(FF)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    new-instance v2, Lcom/samsung/mms/location/PlaceBuilder;

    invoke-direct {v2}, Lcom/samsung/mms/location/PlaceBuilder;-><init>()V

    .line 78
    .local v2, placeBuilder:Lcom/samsung/mms/location/PlaceBuilder;
    aget v4, v1, v6

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/samsung/mms/location/PlaceBuilder;->setLatitude(D)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v4

    aget v5, v1, v7

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/mms/location/PlaceBuilder;->setLongitude(D)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v4

    const-string v5, "Address"

    invoke-virtual {v4, v5}, Lcom/samsung/mms/location/PlaceBuilder;->setName(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/mms/location/PlaceBuilder;->buildPlace()Lcom/samsung/mms/location/Place;

    move-result-object v3

    .line 84
    .end local v2           #placeBuilder:Lcom/samsung/mms/location/PlaceBuilder;
    :cond_0
    return-object v3
.end method

.method public static haveInternet(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 445
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    :cond_0
    const-string v1, "Navigation"

    const-string v2, "No Internet"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v1, 0x0

    .line 450
    :goto_0
    return v1

    .line 449
    :cond_1
    const-string v1, "Navigation"

    const-string v2, "Yes Internet"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAllLocationProviderEnabled(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 97
    .local v6, res:Landroid/content/ContentResolver;
    const-string v9, "location_providers_allowed"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, loc:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string v9, "gps"

    aput-object v9, v4, v7

    .line 107
    .local v4, locationOptionsMatrix:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 109
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 111
    .local v5, option:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 118
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #option:Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 109
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v5       #option:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5           #option:Ljava/lang/String;
    :cond_2
    move v7, v8

    .line 115
    goto :goto_1
.end method

.method public static isBetterLocation(Lcom/nbi/location/Location;Lcom/nbi/location/Location;)Z
    .locals 14
    .parameter "location"
    .parameter "currentBestLocation"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 403
    if-nez p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v8

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/nbi/location/Location;->getGpsTime()J

    move-result-wide v10

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getGpsTime()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 409
    .local v6, timeDelta:J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v6, v10

    if-lez v10, :cond_2

    move v4, v8

    .line 410
    .local v4, isSignificantlyNewer:Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v6, v10

    if-gez v10, :cond_3

    move v5, v8

    .line 411
    .local v5, isSignificantlyOlder:Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_4

    move v3, v8

    .line 413
    .local v3, isNewer:Z
    :goto_3
    if-nez v4, :cond_0

    .line 415
    if-eqz v5, :cond_5

    move v8, v9

    .line 416
    goto :goto_0

    .end local v3           #isNewer:Z
    .end local v4           #isSignificantlyNewer:Z
    .end local v5           #isSignificantlyOlder:Z
    :cond_2
    move v4, v9

    .line 409
    goto :goto_1

    .restart local v4       #isSignificantlyNewer:Z
    :cond_3
    move v5, v9

    .line 410
    goto :goto_2

    .restart local v5       #isSignificantlyOlder:Z
    :cond_4
    move v3, v9

    .line 411
    goto :goto_3

    .line 420
    .restart local v3       #isNewer:Z
    :cond_5
    invoke-virtual {p0}, Lcom/nbi/location/Location;->getAccuracy()I

    move-result v10

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getAccuracy()I

    move-result v11

    sub-int v0, v10, v11

    .line 421
    .local v0, accuracyDelta:I
    if-lez v0, :cond_7

    move v1, v8

    .line 422
    .local v1, isLessAccurate:Z
    :goto_4
    if-gez v0, :cond_8

    move v2, v8

    .line 425
    .local v2, isMoreAccurate:Z
    :goto_5
    if-nez v2, :cond_0

    .line 427
    if-eqz v3, :cond_6

    if-eqz v1, :cond_0

    :cond_6
    move v8, v9

    .line 431
    goto :goto_0

    .end local v1           #isLessAccurate:Z
    .end local v2           #isMoreAccurate:Z
    :cond_7
    move v1, v9

    .line 421
    goto :goto_4

    .restart local v1       #isLessAccurate:Z
    :cond_8
    move v2, v9

    .line 422
    goto :goto_5
.end method

.method private static isValidGeoCoordinates([F)Z
    .locals 4
    .parameter "latAndLon"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 129
    aget v2, p0, v1

    invoke-static {v2, v3}, Lcom/samsung/mms/location/Utils;->compareFloat(FF)Z

    move-result v2

    if-nez v2, :cond_0

    aget v2, p0, v0

    invoke-static {v2, v3}, Lcom/samsung/mms/location/Utils;->compareFloat(FF)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static retrieveGeocoordinates(Landroid/net/Uri;Landroid/content/Context;)[F
    .locals 5
    .parameter "mediaUri"
    .parameter "appContext"

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, uriScheme:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 145
    .local v0, latAndLon:[F
    if-nez v1, :cond_1

    .line 147
    const v3, 0x7f0a0407

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move-object v0, v2

    .line 168
    .end local v0           #latAndLon:[F
    :cond_0
    :goto_0
    return-object v0

    .line 155
    .restart local v0       #latAndLon:[F
    :cond_1
    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    invoke-static {p0, p1, v0}, Lcom/samsung/mms/location/LocationUtils;->findFileGeoCoordinates(Landroid/net/Uri;Landroid/content/Context;[F)V

    .line 164
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/samsung/mms/location/LocationUtils;->isValidGeoCoordinates([F)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 168
    goto :goto_0

    .line 159
    :cond_3
    const-string v3, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    invoke-static {p0, p1, v0}, Lcom/samsung/mms/location/LocationUtils;->findMediaContentGeoCoordinates(Landroid/net/Uri;Landroid/content/Context;[F)V

    goto :goto_1
.end method

.method public static showToastOnUIThread(Landroid/app/Activity;II)V
    .locals 1
    .parameter "activity"
    .parameter "stringResourceID"
    .parameter "toastShowLength"

    .prologue
    .line 387
    new-instance v0, Lcom/samsung/mms/location/LocationUtils$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/mms/location/LocationUtils$3;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method

.method private static startMediaLocationActivity(Landroid/app/Activity;Landroid/net/Uri;I[F)V
    .locals 8
    .parameter "activity"
    .parameter "mediaUri"
    .parameter "requestCode"
    .parameter "latAndLon"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 293
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 295
    .local v0, context:Landroid/content/Context;
    aget v4, p3, v5

    invoke-static {v4, v6}, Lcom/samsung/mms/location/LocationUtils;->floatComp(FF)Z

    move-result v4

    if-nez v4, :cond_0

    aget v4, p3, v7

    invoke-static {v4, v6}, Lcom/samsung/mms/location/LocationUtils;->floatComp(FF)Z

    move-result v4

    if-nez v4, :cond_0

    .line 297
    new-instance v2, Lcom/samsung/mms/location/PlaceBuilder;

    invoke-direct {v2}, Lcom/samsung/mms/location/PlaceBuilder;-><init>()V

    .line 298
    .local v2, placeBuilder:Lcom/samsung/mms/location/PlaceBuilder;
    aget v4, p3, v5

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/samsung/mms/location/PlaceBuilder;->setLatitude(D)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v4

    aget v5, p3, v7

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/mms/location/PlaceBuilder;->setLongitude(D)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v4

    const-string v5, "Address"

    invoke-virtual {v4, v5}, Lcom/samsung/mms/location/PlaceBuilder;->setName(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/mms/location/PlaceBuilder;->buildPlace()Lcom/samsung/mms/location/Place;

    move-result-object v3

    .line 303
    .local v3, placeFromLatLon:Lcom/samsung/mms/location/Place;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v1, mapIntent:Landroid/content/Intent;
    const-string v4, "extra_selected_place"

    invoke-virtual {v3}, Lcom/samsung/mms/location/Place;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 305
    const-string v4, "extra_image_path"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v4, "extra_startup_flag"

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 315
    .end local v1           #mapIntent:Landroid/content/Intent;
    .end local v2           #placeBuilder:Lcom/samsung/mms/location/PlaceBuilder;
    .end local v3           #placeFromLatLon:Lcom/samsung/mms/location/Place;
    :goto_0
    return-void

    .line 310
    :cond_0
    const v4, 0x7f0a0403

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startVzwNavigate(Landroid/app/Activity;Lcom/nbi/map/data/Place;)V
    .locals 10
    .parameter "activity"
    .parameter "navigateTo"

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 321
    .local v8, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 325
    .local v0, nbicontext:Lcom/nbi/common/NBIContext;
    :try_start_0
    invoke-static {v8}, Lcom/samsung/mms/location/LBSManager;->getInstance(Landroid/content/Context;)Lcom/samsung/mms/location/LBSManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/mms/location/LBSManager;->getNBIContext()Lcom/nbi/common/NBIContext;
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    invoke-static {v0}, Lcom/nbi/map/android/MapUtils;->isNavigationAvailable(Lcom/nbi/common/NBIContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    const-string v2, "easiest"

    const-string v3, ""

    const-string v4, "car"

    const/4 v5, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/nbi/map/android/MapUtils;->navigateTo(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/Place;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 327
    :catch_0
    move-exception v9

    .line 328
    .local v9, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v9           #e:Lcom/nbi/location/LocationException;
    :cond_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a03ee

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/samsung/mms/location/LocationUtils$2;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/LocationUtils$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/samsung/mms/location/LocationUtils$1;

    invoke-direct {v3}, Lcom/samsung/mms/location/LocationUtils$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 375
    .local v6, alert:Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public static useMediaLocation(Landroid/app/Activity;Landroid/net/Uri;I)V
    .locals 2
    .parameter "activity"
    .parameter "mediaUri"
    .parameter "requestCode"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, appContext:Landroid/content/Context;
    invoke-static {p1, v0}, Lcom/samsung/mms/location/LocationUtils;->retrieveGeocoordinates(Landroid/net/Uri;Landroid/content/Context;)[F

    move-result-object v1

    .line 58
    .local v1, latAndLon:[F
    if-eqz v1, :cond_0

    .line 59
    invoke-static {p0, p1, p2, v1}, Lcom/samsung/mms/location/LocationUtils;->startMediaLocationActivity(Landroid/app/Activity;Landroid/net/Uri;I[F)V

    .line 61
    :cond_0
    return-void
.end method
