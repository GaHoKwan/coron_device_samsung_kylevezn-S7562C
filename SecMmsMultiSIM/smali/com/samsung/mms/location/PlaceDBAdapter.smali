.class public abstract Lcom/samsung/mms/location/PlaceDBAdapter;
.super Ljava/lang/Object;
.source "PlaceDBAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaceDBAdapter"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected databaseHelper:Lcom/samsung/mms/location/PlacesDatabaseHelper;

.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected sqlTableCount:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    iput-object p1, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->context:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/samsung/mms/location/PlacesDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/samsung/mms/location/PlacesDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->databaseHelper:Lcom/samsung/mms/location/PlacesDatabaseHelper;

    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->sqlTableCount:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->sqlTableCount:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->databaseHelper:Lcom/samsung/mms/location/PlacesDatabaseHelper;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->databaseHelper:Lcom/samsung/mms/location/PlacesDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 60
    :cond_1
    return-void
.end method

.method public deletePlace(J)Z
    .locals 4
    .parameter "rowId"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findPlace(Lcom/nbi/map/data/Place;)J
    .locals 35
    .parameter "findPlace"

    .prologue
    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v19

    .line 197
    .local v19, latitude:D
    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v25

    .line 199
    .local v25, longitude:D
    const-wide/high16 v2, 0x3ff0

    sub-double v21, v19, v2

    .line 200
    .local v21, latitude_lower:D
    const-wide/high16 v2, 0x3ff0

    add-double v23, v19, v2

    .line 201
    .local v23, latitude_upper:D
    const-wide/high16 v2, 0x3ff0

    sub-double v27, v25, v2

    .line 202
    .local v27, longitude_lower:D
    const-wide/high16 v2, 0x3ff0

    add-double v29, v25, v2

    .line 205
    .local v29, longitude_upper:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "latitude"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "longitude"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "place_bytes"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "( latitude BETWEEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "( longitude BETWEEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v27

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 212
    .local v11, cursor:Landroid/database/Cursor;
    const-wide/16 v33, -0x1

    .line 213
    .local v33, rowId:J
    const-wide/16 v31, -0x1

    .line 214
    .local v31, match:J
    const/4 v14, 0x0

    .line 216
    .local v14, dbPlace:Lcom/nbi/map/data/Place;
    new-instance v18, Lcom/samsung/mms/location/PlaceFormatter;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    .line 217
    .local v18, findPlaceFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine1()Ljava/lang/String;

    move-result-object v16

    .line 218
    .local v16, findAddress1:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine2()Ljava/lang/String;

    move-result-object v17

    .line 220
    .local v17, findAddress2:Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 225
    new-instance v14, Lcom/nbi/map/data/Place;

    .end local v14           #dbPlace:Lcom/nbi/map/data/Place;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/nbi/map/data/Place;-><init>([B)V

    .line 226
    .restart local v14       #dbPlace:Lcom/nbi/map/data/Place;
    new-instance v15, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v15, v14}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    .line 227
    .local v15, dbPlaceFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    invoke-virtual {v15}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine1()Ljava/lang/String;

    move-result-object v12

    .line 228
    .local v12, dbAddress1:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine2()Ljava/lang/String;

    move-result-object v13

    .line 230
    .local v13, dbAddress2:Ljava/lang/String;
    const/4 v10, 0x0

    .line 231
    .local v10, count:I
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v2

    invoke-virtual {v14}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v2

    invoke-virtual {v14}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    .line 236
    move-wide/from16 v31, v33

    .line 248
    .end local v10           #count:I
    .end local v12           #dbAddress1:Ljava/lang/String;
    .end local v13           #dbAddress2:Ljava/lang/String;
    .end local v15           #dbPlaceFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    :cond_1
    :goto_0
    if-eqz v11, :cond_2

    .line 249
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_2
    return-wide v31

    .line 240
    .restart local v10       #count:I
    .restart local v12       #dbAddress1:Ljava/lang/String;
    .restart local v13       #dbAddress2:Ljava/lang/String;
    .restart local v15       #dbPlaceFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 243
    move-wide/from16 v31, v33

    .line 244
    goto :goto_0

    .line 246
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getAllPlaces()Ljava/util/Vector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v2, v4

    const-string v4, "place_bytes"

    aput-object v4, v2, v10

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getOrdering()Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 138
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 139
    .local v9, places:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    if-eqz v8, :cond_2

    .line 141
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v9, Ljava/util/Vector;

    .end local v9           #places:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/Vector;-><init>(I)V

    .line 147
    .restart local v9       #places:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    :cond_0
    new-instance v0, Lcom/nbi/map/data/Place;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Place;-><init>([B)V

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_2
    return-object v9
.end method

.method protected abstract getOrdering()Ljava/lang/String;
.end method

.method public getPlace(J)Lcom/nbi/map/data/Place;
    .locals 13
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 166
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "latitude"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "longitude"

    aput-object v6, v3, v4

    const-string v4, "place_bytes"

    aput-object v4, v3, v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 171
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 172
    .local v11, dbPlace:Lcom/nbi/map/data/Place;
    if-eqz v10, :cond_1

    .line 174
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    new-instance v11, Lcom/nbi/map/data/Place;

    .end local v11           #dbPlace:Lcom/nbi/map/data/Place;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/nbi/map/data/Place;-><init>([B)V

    .line 177
    .restart local v11       #dbPlace:Lcom/nbi/map/data/Place;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_1
    return-object v11
.end method

.method protected abstract getTableName()Ljava/lang/String;
.end method

.method public getTableRowCount()J
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->sqlTableCount:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->sqlTableCount:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    .line 291
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected abstract getTableRowLimit()J
.end method

.method public insertPlace(Lcom/nbi/map/data/Place;)J
    .locals 13
    .parameter "place"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v12, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableRowCount()J

    move-result-wide v6

    .line 80
    .local v6, rowCount:J
    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableRowLimit()J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-ltz v10, :cond_1

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->onLimitReached()Z

    move-result v10

    if-nez v10, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-wide v8

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Address"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    .line 85
    invoke-virtual {p1, v12}, Lcom/nbi/map/data/Place;->setName(Ljava/lang/String;)V

    .line 87
    :cond_2
    new-instance v10, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v10, p1}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedPlaceArray(Z)[Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, placeAddress:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v0, initialValues:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v1

    .line 96
    .local v1, latitude:D
    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v3

    .line 98
    .local v3, longitude:D
    const-string v8, "latitude"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 99
    const-string v8, "longitude"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 100
    const-string v8, "place_bytes"

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 101
    const-string v8, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    iget-object v8, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    goto :goto_0
.end method

.method protected onLimitReached()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public open()Lcom/samsung/mms/location/PlaceDBAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->databaseHelper:Lcom/samsung/mms/location/PlacesDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->sqlTableCount:Landroid/database/sqlite/SQLiteStatement;

    .line 47
    :cond_1
    return-object p0
.end method

.method public truncate(D)D
    .locals 8
    .parameter "in"

    .prologue
    const-wide v6, 0x412e848000000000L

    .line 276
    const-wide v2, 0x412e848000000000L

    .line 278
    .local v2, truncatePlaces:D
    mul-double v4, p1, v6

    double-to-long v0, v4

    .line 280
    .local v0, shifted:J
    long-to-double v4, v0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public updatePlace(JLcom/nbi/map/data/Place;)Z
    .locals 9
    .parameter "rowId"
    .parameter "place"

    .prologue
    .line 262
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v0, args:Landroid/content/ContentValues;
    invoke-virtual {p3}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v1

    .line 265
    .local v1, latitude:D
    invoke-virtual {p3}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v3

    .line 267
    .local v3, longitude:D
    const-string v5, "latitude"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 268
    const-string v5, "longitude"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 269
    const-string v5, "place_bytes"

    invoke-virtual {p3}, Lcom/nbi/map/data/Place;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 270
    const-string v5, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    iget-object v5, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
