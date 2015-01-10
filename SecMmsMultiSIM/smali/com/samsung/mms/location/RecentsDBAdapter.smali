.class public Lcom/samsung/mms/location/RecentsDBAdapter;
.super Lcom/samsung/mms/location/PlaceDBAdapter;
.source "RecentsDBAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected findOldestItem()J
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 59
    const-wide/16 v10, -0x1

    .line 61
    .local v10, rowId:J
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/RecentsDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v12

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "place_bytes"

    aput-object v5, v2, v4

    const-string v7, "timestamp asc"

    const-string v8, "1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 66
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 68
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 72
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    return-wide v10
.end method

.method protected getOrdering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "timestamp desc"

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "recents"

    return-object v0
.end method

.method protected getTableRowLimit()J
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, 0x14

    return-wide v0
.end method

.method public insertPlace(Lcom/nbi/map/data/Place;)J
    .locals 10
    .parameter "place"

    .prologue
    const-wide/16 v6, -0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;->findPlace(Lcom/nbi/map/data/Place;)J

    move-result-wide v4

    .line 32
    .local v4, rowId:J
    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableRowCount()J

    move-result-wide v2

    .line 36
    .local v2, rowCount:J
    invoke-virtual {p0}, Lcom/samsung/mms/location/RecentsDBAdapter;->getTableRowLimit()J

    move-result-wide v8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/samsung/mms/location/RecentsDBAdapter;->findOldestItem()J

    move-result-wide v0

    .line 39
    .local v0, oldestItem:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-ltz v8, :cond_0

    invoke-super {p0, v0, v1, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;->updatePlace(JLcom/nbi/map/data/Place;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 50
    .end local v0           #oldestItem:J
    .end local v2           #rowCount:J
    :goto_0
    return-wide v0

    .restart local v0       #oldestItem:J
    .restart local v2       #rowCount:J
    :cond_0
    move-wide v0, v6

    .line 42
    goto :goto_0

    .line 44
    .end local v0           #oldestItem:J
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;->insertPlace(Lcom/nbi/map/data/Place;)J

    move-result-wide v0

    goto :goto_0

    .line 49
    .end local v2           #rowCount:J
    :cond_2
    invoke-super {p0, v4, v5, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;->updatePlace(JLcom/nbi/map/data/Place;)Z

    move-wide v0, v4

    .line 50
    goto :goto_0
.end method
