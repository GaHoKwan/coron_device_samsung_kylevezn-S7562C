.class public Lcom/android/mms/ui/SearchListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SearchListAdapter"


# instance fields
.field private mBubbleIdx:J

.field private mBubbleTitle:Ljava/lang/String;

.field private mHighLight:Ljava/util/regex/Pattern;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

.field private mSearchString:Ljava/lang/String;

.field private mThreadIdx:J

.field private mThreadTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method

.method private setSearchTitle(Landroid/database/Cursor;Landroid/view/View;)V
    .locals 5
    .parameter "cursor"
    .parameter "view"

    .prologue
    .line 66
    const v3, 0x7f0e01ea

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    .local v2, mSeparatorText:Landroid/widget/TextView;
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    int-to-long v0, v3

    .line 70
    .local v0, cursor_index:J
    iget-wide v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadIdx:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleIdx:J

    cmp-long v3, v3, v0

    if-nez v3, :cond_3

    .line 71
    :cond_0
    iget-wide v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadIdx:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadTitle:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_1
    return-void

    .line 75
    :cond_2
    iget-wide v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleIdx:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleTitle:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_3
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const-wide/16 v3, -0x1

    .line 35
    invoke-direct {p0, p3, p1}, Lcom/android/mms/ui/SearchListAdapter;->setSearchTitle(Landroid/database/Cursor;Landroid/view/View;)V

    move-object v0, p1

    .line 36
    check-cast v0, Lcom/android/mms/ui/SearchListItem;

    .line 37
    .local v0, item:Lcom/android/mms/ui/SearchListItem;
    iget-wide v1, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadIdx:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleIdx:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 38
    iget-wide v1, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleIdx:J

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SearchListItem;->setLastIndex(J)V

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/SearchListAdapter;->mHighLight:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/android/mms/ui/SearchListItem;->bind(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 41
    return-void
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "Mms/SearchListAdapter"

    const-string v1, "SearchListAdapter.onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/SearchListAdapter;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setBubbleInfo(JLjava/lang/String;)V
    .locals 0
    .parameter "idx"
    .parameter "title"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleIdx:J

    .line 94
    iput-object p3, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleTitle:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    .line 48
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 1
    .parameter "searchString"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/android/mms/util/UIUtils;->createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mHighLight:Ljava/util/regex/Pattern;

    .line 61
    return-void
.end method

.method public setThreadInfo(JLjava/lang/String;)V
    .locals 0
    .parameter "idx"
    .parameter "title"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadIdx:J

    .line 89
    iput-object p3, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadTitle:Ljava/lang/String;

    .line 90
    return-void
.end method
