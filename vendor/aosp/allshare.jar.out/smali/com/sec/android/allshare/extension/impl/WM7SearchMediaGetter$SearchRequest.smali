.class Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
.super Ljava/lang/Object;
.source "WM7SearchMediaGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchRequest"
.end annotation


# instance fields
.field private mSearchCriteria:Lcom/sec/android/allshare/media/SearchCriteria;

.field private mStartIndex:I

.field final synthetic this$0:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;Lcom/sec/android/allshare/media/SearchCriteria;I)V
    .locals 1
    .parameter
    .parameter "criteria"
    .parameter "startIndex"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->this$0:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mSearchCriteria:Lcom/sec/android/allshare/media/SearchCriteria;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mStartIndex:I

    .line 40
    iput-object p2, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mSearchCriteria:Lcom/sec/android/allshare/media/SearchCriteria;

    .line 41
    iput p3, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mStartIndex:I

    .line 42
    return-void
.end method


# virtual methods
.method public isSame(Lcom/sec/android/allshare/media/SearchCriteria;I)Z
    .locals 1
    .parameter "criteria"
    .parameter "startIndex"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mSearchCriteria:Lcom/sec/android/allshare/media/SearchCriteria;

    invoke-virtual {v0, p1}, Lcom/sec/android/allshare/media/SearchCriteria;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mStartIndex:I

    if-ne v0, p2, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSearchRequest(Lcom/sec/android/allshare/media/SearchCriteria;I)V
    .locals 0
    .parameter "criteria"
    .parameter "startIndex"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mSearchCriteria:Lcom/sec/android/allshare/media/SearchCriteria;

    .line 52
    iput p2, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mStartIndex:I

    .line 53
    return-void
.end method
