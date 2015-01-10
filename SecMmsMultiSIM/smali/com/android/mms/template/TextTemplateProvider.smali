.class public Lcom/android/mms/template/TextTemplateProvider;
.super Ljava/lang/Object;
.source "TextTemplateProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table text_template (_id integer primary key autoincrement, body text not null, checked integer default -1 );"

.field private static final DATABASE_NAME:Ljava/lang/String; = "message.db"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "text_template"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final KEY_BODY:Ljava/lang/String; = "body"

.field public static final KEY_BODY_INDEX:I = 0x1

.field public static final KEY_CHECKED:Ljava/lang/String; = "checked"

.field public static final KEY_CHECKED_INDEX:I = 0x2

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_ID_INDEX:I = 0x0

.field public static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "mms/TemplateDbAdapter"


# instance fields
.field private mTextTemplateDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mTextTemplateDbHelper:Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;

.field private final mTextTmplateDBContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/template/TextTemplateProvider;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTmplateDBContext:Landroid/content/Context;

    .line 141
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTemplateDbHelper:Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTemplateDbHelper:Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 158
    :cond_0
    return-void
.end method

.method public createTemplate(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "body"

    .prologue
    .line 165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v0, createValues:Landroid/content/ContentValues;
    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "checked"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateProvider;->insert(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 224
    .local v1, nCount:I
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTemplateDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "text_template"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 228
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "mms/TemplateDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete() - ERROR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteTemplate(Landroid/database/Cursor;I)I
    .locals 4
    .parameter "mCursor"
    .parameter "selectionID"

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, retVal:I
    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 182
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 183
    .local v0, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/template/TextTemplateProvider;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 185
    .end local v0           #id:I
    :cond_0
    return v1
.end method

.method public insert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTemplateDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "text_template"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-object v4

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "mms/TemplateDbAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert() - ERROR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public open()Lcom/android/mms/template/TextTemplateProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTmplateDBContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;-><init>(Lcom/android/mms/template/TextTemplateProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTemplateDbHelper:Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;

    .line 149
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTemplateDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTemplateDbHelper:Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTemplateDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 152
    :cond_0
    return-object p0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 241
    const/4 v8, 0x0

    .line 243
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTemplateDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "text_template"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 247
    :goto_0
    return-object v8

    .line 244
    :catch_0
    move-exception v9

    .line 245
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "mms/TemplateDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query() - ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 253
    .local v1, nCount:I
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateProvider;->mTextTemplateDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "text_template"

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 257
    :goto_0
    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "mms/TemplateDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update() - ERROR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateTemplate(Landroid/database/Cursor;ILjava/lang/String;Z)I
    .locals 6
    .parameter "mCursor"
    .parameter "SelectionID"
    .parameter "body"
    .parameter "IsUserUpdate"

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, retVal:I
    const/4 v0, -0x1

    .line 196
    .local v0, checkedValue:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v3, savingContents:Landroid/content/ContentValues;
    const-string v4, "body"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v4, 0x1

    if-ne p4, v4, :cond_0

    .line 199
    const-string v4, "checked"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    :cond_0
    if-eqz p1, :cond_1

    .line 203
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 204
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 205
    .local v1, id:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/mms/template/TextTemplateProvider;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 207
    .end local v1           #id:I
    :cond_1
    return v2
.end method
