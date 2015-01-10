.class public Lcom/sec/android/app/contacts/ContactCursorLoader;
.super Landroid/content/CursorLoader;
.source "ContactCursorLoader.java"


# instance fields
.field mCancellationSignal:Landroid/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 135
    iput-object p2, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mUri:Landroid/net/Uri;

    .line 136
    iput-object p3, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mProjection:[Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelection:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 139
    iput-object p6, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/content/CursorLoader;->cancelLoadInBackground()V

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 82
    :cond_0
    monitor-exit p0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Loader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 104
    .local v0, oldCursor:Landroid/database/Cursor;
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 106
    invoke-virtual {p0}, Landroid/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 110
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/ContactCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/CursorLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 231
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 65
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p0, v6, v0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    .line 70
    :cond_0
    return-object v6
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 170
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/ContactCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/content/CursorLoader;->onReset()V

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->onStopLoading()V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 186
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 155
    :cond_1
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 157
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 166
    return-void
.end method

.method registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "cursor"
    .parameter "observer"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 91
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .parameter "projection"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mProjection:[Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelection:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .parameter "selectionArgs"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .parameter "sortOrder"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mUri:Landroid/net/Uri;

    .line 194
    return-void
.end method
