.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChildrenIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 111
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-eq v2, v1, :cond_0

    .line 112
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 113
    .local v0, node:I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 114
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result v1

    .line 117
    .end local v0           #node:I
    :cond_0
    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2
    .parameter "node"

    .prologue
    const/4 v0, -0x1

    .line 89
    if-nez p1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 91
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v1, :cond_1

    .line 93
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 94
    if-ne p1, v0, :cond_2

    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 97
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 100
    .end local p0
    :cond_1
    return-object p0

    .line 94
    .restart local p0
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v0

    goto :goto_0
.end method
