.class public Lcom/samsung/mms/location/SearchEditText;
.super Landroid/widget/EditText;
.source "SearchEditText.java"


# instance fields
.field private backAction:Lcom/samsung/mms/location/OnSearchEditorBackAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/SearchEditText;->backAction:Lcom/samsung/mms/location/OnSearchEditorBackAction;

    .line 14
    invoke-direct {p0}, Lcom/samsung/mms/location/SearchEditText;->initializeEditor()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/SearchEditText;->backAction:Lcom/samsung/mms/location/OnSearchEditorBackAction;

    .line 19
    invoke-direct {p0}, Lcom/samsung/mms/location/SearchEditText;->initializeEditor()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/SearchEditText;->backAction:Lcom/samsung/mms/location/OnSearchEditorBackAction;

    .line 24
    invoke-direct {p0}, Lcom/samsung/mms/location/SearchEditText;->initializeEditor()V

    .line 25
    return-void
.end method

.method private initializeEditor()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/SearchEditText;->backAction:Lcom/samsung/mms/location/OnSearchEditorBackAction;

    .line 29
    return-void
.end method


# virtual methods
.method public getOnSearchEditorBackAction()Lcom/samsung/mms/location/OnSearchEditorBackAction;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/mms/location/SearchEditText;->backAction:Lcom/samsung/mms/location/OnSearchEditorBackAction;

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 35
    .local v0, superResult:Z
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/SearchEditText;->backAction:Lcom/samsung/mms/location/OnSearchEditorBackAction;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/samsung/mms/location/SearchEditText;->backAction:Lcom/samsung/mms/location/OnSearchEditorBackAction;

    invoke-interface {v1}, Lcom/samsung/mms/location/OnSearchEditorBackAction;->onBackAction()Z

    move-result v0

    .line 42
    .end local v0           #superResult:Z
    :cond_0
    return v0
.end method

.method public setOnSearchEditorBackAction(Lcom/samsung/mms/location/OnSearchEditorBackAction;)V
    .locals 0
    .parameter "newBackAction"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/mms/location/SearchEditText;->backAction:Lcom/samsung/mms/location/OnSearchEditorBackAction;

    .line 51
    return-void
.end method
