.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllFromNodeTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public next(II)I
    .locals 2
    .parameter "context"
    .parameter "current"

    .prologue
    .line 808
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 810
    .local v0, subtreeRootIdent:I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    add-int/lit8 p2, v1, 0x1

    .line 817
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    .line 819
    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isDescendant(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 820
    const/4 v1, -0x1

    .line 822
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    goto :goto_0
.end method