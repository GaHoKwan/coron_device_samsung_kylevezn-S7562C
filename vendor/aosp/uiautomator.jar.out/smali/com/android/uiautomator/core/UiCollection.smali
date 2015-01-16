.class public Lcom/android/uiautomator/core/UiCollection;
.super Lcom/android/uiautomator/core/UiObject;
.source "UiCollection.java"


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 0
    .parameter "selector"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 8
    .parameter "childPattern"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiCollection;->getChildCount(Lcom/android/uiautomator/core/UiSelector;)I

    move-result v0

    .line 51
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 52
    invoke-virtual {p0, p1, v4}, Lcom/android/uiautomator/core/UiCollection;->getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;

    move-result-object v3

    .line 53
    .local v3, row:Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiObject;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, nodeDesc:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    :cond_0
    return-object v3

    .line 57
    :cond_1
    new-instance v5, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v5}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v5, p2}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/uiautomator/core/UiObject;->getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;

    move-result-object v1

    .line 58
    .local v1, item:Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiObject;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    .end local v0           #count:I
    .end local v1           #item:Lcom/android/uiautomator/core/UiObject;
    .end local v2           #nodeDesc:Ljava/lang/String;
    .end local v3           #row:Lcom/android/uiautomator/core/UiObject;
    .end local v4           #x:I
    :cond_2
    new-instance v5, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for description= \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;
    .locals 3
    .parameter "childPattern"
    .parameter "instance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/uiautomator/core/UiSelector;->instance(I)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    .line 81
    .local v0, patternSelector:Lcom/android/uiautomator/core/UiSelector;
    new-instance v1, Lcom/android/uiautomator/core/UiObject;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v1
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 8
    .parameter "childPattern"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p2, :cond_2

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiCollection;->getChildCount(Lcom/android/uiautomator/core/UiSelector;)I

    move-result v0

    .line 102
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 103
    invoke-virtual {p0, p1, v4}, Lcom/android/uiautomator/core/UiCollection;->getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;

    move-result-object v3

    .line 104
    .local v3, row:Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiObject;->getText()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, nodeText:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    :cond_0
    return-object v3

    .line 108
    :cond_1
    new-instance v5, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v5}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v5, p2}, Lcom/android/uiautomator/core/UiSelector;->text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/uiautomator/core/UiObject;->getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;

    move-result-object v1

    .line 109
    .local v1, item:Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiObject;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v0           #count:I
    .end local v1           #item:Lcom/android/uiautomator/core/UiObject;
    .end local v2           #nodeText:Ljava/lang/String;
    .end local v3           #row:Lcom/android/uiautomator/core/UiObject;
    .end local v4           #x:I
    :cond_2
    new-instance v5, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for text= \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getChildCount(Lcom/android/uiautomator/core/UiSelector;)I
    .locals 3
    .parameter "childPattern"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    .line 130
    .local v0, patternSelector:Lcom/android/uiautomator/core/UiSelector;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/uiautomator/core/QueryController;->getPatternCount(Lcom/android/uiautomator/core/UiSelector;)I

    move-result v1

    return v1
.end method
