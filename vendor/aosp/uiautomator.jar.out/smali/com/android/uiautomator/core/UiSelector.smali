.class public Lcom/android/uiautomator/core/UiSelector;
.super Ljava/lang/Object;
.source "UiSelector.java"


# static fields
.field static final SELECTOR_CHECKED:I = 0xf

.field static final SELECTOR_CHILD:I = 0x13

.field static final SELECTOR_CLASS:I = 0x4

.field static final SELECTOR_CLICKABLE:I = 0xe

.field static final SELECTOR_CONTAINER:I = 0x14

.field static final SELECTOR_CONTAINS_DESCRIPTION:I = 0x7

.field static final SELECTOR_CONTAINS_TEXT:I = 0x3

.field static final SELECTOR_COUNT:I = 0x17

.field static final SELECTOR_DESCRIPTION:I = 0x5

.field static final SELECTOR_ENABLED:I = 0xa

.field static final SELECTOR_FOCUSABLE:I = 0xc

.field static final SELECTOR_FOCUSED:I = 0xb

.field static final SELECTOR_ID:I = 0x11

.field static final SELECTOR_INDEX:I = 0x8

.field static final SELECTOR_INSTANCE:I = 0x9

.field static final SELECTOR_NIL:I = 0x0

.field static final SELECTOR_PACKAGE_NAME:I = 0x12

.field static final SELECTOR_PARENT:I = 0x16

.field static final SELECTOR_PATTERN:I = 0x15

.field static final SELECTOR_SCROLLABLE:I = 0xd

.field static final SELECTOR_SELECTED:I = 0x10

.field static final SELECTOR_START_DESCRIPTION:I = 0x6

.field static final SELECTOR_START_TEXT:I = 0x2

.field static final SELECTOR_TEXT:I = 0x1


# instance fields
.field private mSelectorAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 1
    .parameter "selector"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->cloneSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    iget-object v0, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 63
    return-void
.end method

.method private buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "selectorId"
    .parameter "selectorValue"

    .prologue
    .line 178
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 179
    .local v0, selector:Lcom/android/uiautomator/core/UiSelector;
    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    if-ne p1, v1, :cond_1

    .line 180
    :cond_0
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    iget-object v1, v1, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    :goto_0
    return-object v0

    .line 182
    :cond_1
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private containerSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "selector"

    .prologue
    .line 162
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method private getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 5

    .prologue
    const/16 v4, 0x16

    const/16 v3, 0x13

    .line 421
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 423
    .local v0, child:Lcom/android/uiautomator/core/UiSelector;
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    if-nez v2, :cond_0

    .line 434
    .end local v0           #child:Lcom/android/uiautomator/core/UiSelector;
    :goto_0
    return-object v0

    .line 426
    .restart local v0       #child:Lcom/android/uiautomator/core/UiSelector;
    :cond_0
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    goto :goto_0

    .line 427
    .end local v0           #child:Lcom/android/uiautomator/core/UiSelector;
    :cond_1
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 428
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/uiautomator/core/UiSelector;

    .line 429
    .local v1, parent:Lcom/android/uiautomator/core/UiSelector;
    invoke-direct {v1}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 430
    goto :goto_0

    .line 432
    :cond_2
    invoke-direct {v1}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    goto :goto_0

    .end local v1           #parent:Lcom/android/uiautomator/core/UiSelector;
    :cond_3
    move-object v0, p0

    .line 434
    goto :goto_0
.end method

.method private matchOrUpdateInstance()Z
    .locals 5

    .prologue
    const/16 v3, 0x9

    const/16 v4, 0x17

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, currentSelectorCounter:I
    const/4 v1, 0x0

    .line 351
    .local v1, currentSelectorInstance:I
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 362
    :cond_1
    if-ne v1, v0, :cond_2

    .line 363
    const/4 v2, 0x1

    .line 369
    :goto_0
    return v2

    .line 366
    :cond_2
    if-le v1, v0, :cond_3

    .line 367
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "selector"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/UiSelector;->patternSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object p0

    .line 81
    .end local p0
    :cond_0
    return-object p0
.end method

.method static patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "container"
    .parameter "pattern"

    .prologue
    .line 85
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/uiautomator/core/UiSelector;->containerSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->patternSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v0
.end method

.method private patternSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "selector"

    .prologue
    .line 158
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checked(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "val"

    .prologue
    .line 146
    const/16 v0, 0xf

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "selector"

    .prologue
    .line 154
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public className(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "className"

    .prologue
    .line 102
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public clickable(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "val"

    .prologue
    .line 150
    const/16 v0, 0xe

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method protected cloneSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 5

    .prologue
    .line 66
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    .line 67
    .local v0, ret:Lcom/android/uiautomator/core/UiSelector;
    iget-object v1, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v2, 0x13

    new-instance v3, Lcom/android/uiautomator/core/UiSelector;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->getChildSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v2, 0x16

    new-instance v3, Lcom/android/uiautomator/core/UiSelector;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->getParentSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v2, 0x15

    new-instance v3, Lcom/android/uiautomator/core/UiSelector;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->getPatternSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    :cond_2
    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "desc"

    .prologue
    .line 106
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "desc"

    .prologue
    .line 114
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public descriptionStartsWith(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "desc"

    .prologue
    .line 110
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method dumpToString(Z)Ljava/lang/String;
    .locals 6
    .parameter "all"

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/android/uiautomator/core/UiSelector;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v4, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 446
    .local v2, criterionCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 447
    if-lez v3, :cond_0

    .line 448
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_0
    iget-object v4, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 451
    .local v1, criterion:I
    packed-switch v1, :pswitch_data_0

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNDEFINED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 453
    :pswitch_0
    const-string v4, "TEXT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 456
    :pswitch_1
    const-string v4, "START_TEXT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 459
    :pswitch_2
    const-string v4, "CONTAINS_TEXT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 462
    :pswitch_3
    const-string v4, "CLASS="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 465
    :pswitch_4
    const-string v4, "DESCRIPTION="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 468
    :pswitch_5
    const-string v4, "START_DESCRIPTION="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 471
    :pswitch_6
    const-string v4, "CONTAINS_DESCRIPTION="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 474
    :pswitch_7
    const-string v4, "INDEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 477
    :pswitch_8
    const-string v4, "INSTANCE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 480
    :pswitch_9
    const-string v4, "ENABLED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 483
    :pswitch_a
    const-string v4, "FOCUSED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 486
    :pswitch_b
    const-string v4, "FOCUSABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 489
    :pswitch_c
    const-string v4, "SCROLLABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 492
    :pswitch_d
    const-string v4, "CLICKABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 495
    :pswitch_e
    const-string v4, "CHECKED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 498
    :pswitch_f
    const-string v4, "SELECTED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 501
    :pswitch_10
    const-string v4, "ID="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 504
    :pswitch_11
    if-eqz p1, :cond_1

    .line 505
    const-string v4, "CHILD="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 507
    :cond_1
    const-string v4, "CHILD[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 510
    :pswitch_12
    if-eqz p1, :cond_2

    .line 511
    const-string v4, "PATTERN="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 513
    :cond_2
    const-string v4, "PATTERN[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 516
    :pswitch_13
    if-eqz p1, :cond_3

    .line 517
    const-string v4, "CONTAINER="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 519
    :cond_3
    const-string v4, "CONTAINER[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 522
    :pswitch_14
    if-eqz p1, :cond_4

    .line 523
    const-string v4, "PARENT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 525
    :cond_4
    const-string v4, "PARENT[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 528
    :pswitch_15
    const-string v4, "COUNT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 531
    :pswitch_16
    const-string v4, "PACKAGE NAME="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 537
    .end local v1           #criterion:I
    :cond_5
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_16
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public enabled(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "val"

    .prologue
    .line 126
    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public focusable(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "val"

    .prologue
    .line 134
    const/16 v0, 0xc

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public focused(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "val"

    .prologue
    .line 130
    const/16 v0, 0xb

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public fromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "selector"

    .prologue
    .line 166
    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method getBoolean(I)Z
    .locals 2
    .parameter "criterion"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getChildSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 197
    .local v0, selector:Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_0

    .line 198
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 199
    :cond_0
    return-object v1
.end method

.method getContainerSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 213
    .local v0, selector:Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_0

    .line 214
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 215
    :cond_0
    return-object v1
.end method

.method getInstance()I
    .locals 1

    .prologue
    .line 227
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getInt(I)I

    move-result v0

    return v0
.end method

.method getInt(I)I
    .locals 2
    .parameter "criterion"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getParentSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v3, 0x16

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 221
    .local v0, selector:Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_0

    .line 222
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 223
    :cond_0
    return-object v1
.end method

.method getPatternSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 205
    .local v0, selector:Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_0

    .line 206
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 207
    :cond_0
    return-object v1
.end method

.method getString(I)Ljava/lang/String;
    .locals 2
    .parameter "criterion"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method hasChildSelector()Z
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method hasContainerSelector()Z
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method hasParentSelector()Z
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method hasPatternSelector()Z
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public index(I)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "index"

    .prologue
    .line 118
    const/16 v0, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public instance(I)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "instance"

    .prologue
    .line 122
    const/16 v0, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method isLeaf()Z
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 380
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z
    .locals 7
    .parameter "node"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 243
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 244
    .local v2, size:I
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, s:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 247
    .local v0, criterion:I
    packed-switch v0, :pswitch_data_0

    .line 244
    :cond_0
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getInt(I)I

    move-result v5

    if-eq p2, v5, :cond_0

    .line 343
    .end local v0           #criterion:I
    .end local v1           #s:Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    return v4

    .line 253
    .restart local v0       #criterion:I
    .restart local v1       #s:Ljava/lang/CharSequence;
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 258
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 264
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 269
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 270
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 276
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 283
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 289
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 290
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 296
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 303
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 309
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    goto/16 :goto_1

    .line 314
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    goto/16 :goto_1

    .line 319
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    goto/16 :goto_1

    .line 326
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 332
    :pswitch_f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    goto/16 :goto_1

    .line 337
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    goto/16 :goto_1

    .line 343
    .end local v0           #criterion:I
    .end local v1           #s:Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0}, Lcom/android/uiautomator/core/UiSelector;->matchOrUpdateInstance()Z

    move-result v4

    goto/16 :goto_1

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_4
        :pswitch_2
        :pswitch_10
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public packageName(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "name"

    .prologue
    .line 170
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public scrollable(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "val"

    .prologue
    .line 138
    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public selected(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .parameter "val"

    .prologue
    .line 142
    const/16 v0, 0x10

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "text"

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public textContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "text"

    .prologue
    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public textStartsWith(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .parameter "text"

    .prologue
    .line 94
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
