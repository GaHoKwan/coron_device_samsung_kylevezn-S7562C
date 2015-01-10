.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;,
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private SIM_ONE:I

.field private SIM_ZERO:I

.field private isSIM2Account:Z

.field private isSIMAccount:Z

.field private mBeforeStr:Ljava/lang/String;

.field private mCurStr:Ljava/lang/String;

.field private mExpansionView:Landroid/widget/ImageView;

.field private mExpansionViewContainer:Landroid/view/View;

.field private mExtFullyOccupiedCaseLen:I

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mFields:Landroid/view/ViewGroup;

.field private mHasShortAndLongForms:Z

.field private mHideOptional:Z

.field private mIsPhoneticName:Z

.field private mMinFieldHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    const-class v0, Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/TextFieldsEditorView;->TAG:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_LimitNameLength"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/editor/TextFieldsEditorView;->MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 88
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 91
    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsPhoneticName:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    .line 100
    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ZERO:I

    .line 101
    iput v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ONE:I

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 88
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 91
    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsPhoneticName:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    .line 100
    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ZERO:I

    .line 101
    iput v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ONE:I

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 88
    iput-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 91
    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsPhoneticName:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    .line 100
    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ZERO:I

    .line 101
    iput v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ONE:I

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->chkKorean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/TextFieldsEditorView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private chkKorean(Ljava/lang/String;)Z
    .locals 3
    .parameter "text"

    .prologue
    .line 820
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 821
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7a3

    if-gt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xac00

    if-ge v1, v2, :cond_4

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x11ff

    if-gt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x1100

    if-ge v1, v2, :cond_4

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7fb

    if-gt v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7b0

    if-ge v1, v2, :cond_4

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xa97c

    if-gt v1, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xa960

    if-ge v1, v2, :cond_4

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x318e

    if-gt v1, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3130

    if-lt v1, v2, :cond_5

    .line 824
    :cond_4
    const/4 v1, 0x1

    .line 827
    :goto_1
    return v1

    .line 820
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupExpansionView(ZZ)V
    .locals 3
    .parameter "shouldExist"
    .parameter "collapsed"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 189
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :goto_0
    return-void

    .line 192
    :cond_0
    if-eqz p1, :cond_5

    .line 193
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const v0, 0x7f020045

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_1
    const v0, 0x7f020044

    goto :goto_1

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    const v0, 0x7f02003c

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    const v0, 0x7f02003a

    goto :goto_4

    .line 209
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0440

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    .line 212
    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsPhoneticName:Z

    if-eqz v0, :cond_6

    .line 213
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public areOptionalFieldsVisible()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFieldEditTexts()[Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method public getPhoneticFamilyName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    .locals 1
    .parameter "entry"

    .prologue
    .line 977
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 978
    const-string v0, ""

    .line 980
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneticGivenName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    .locals 1
    .parameter "entry"

    .prologue
    .line 991
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 992
    const-string v0, ""

    .line 994
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneticMiddleName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    .locals 1
    .parameter "entry"

    .prologue
    .line 984
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 985
    const-string v0, ""

    .line 987
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneticName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    .locals 6
    .parameter "vd"

    .prologue
    .line 954
    const-string v3, ""

    .line 955
    .local v3, phoneticName:Ljava/lang/String;
    const-string v4, "data9"

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, family:Ljava/lang/String;
    const-string v4, "data8"

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 957
    .local v2, middle:Ljava/lang/String;
    const-string v4, "data7"

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, given:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 960
    const-string v0, ""

    .line 961
    :cond_0
    if-nez v2, :cond_1

    .line 962
    const-string v2, ""

    .line 963
    :cond_1
    if-nez v1, :cond_2

    .line 964
    const-string v1, ""

    .line 966
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 967
    move-object v3, v0

    .line 968
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 969
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 970
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 971
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 973
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public hasShortAndLongForms()Z
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 832
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 833
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 834
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 835
    const/4 v2, 0x0

    .line 838
    .end local v0           #editText:Landroid/widget/EditText;
    :goto_1
    return v2

    .line 832
    .restart local v0       #editText:Landroid/widget/EditText;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 125
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    .line 129
    const v0, 0x7f090148

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 131
    const v0, 0x7f090250

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f0902c6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 892
    move-object v2, p1

    check-cast v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    .line 893
    .local v2, ss:Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    invoke-virtual {v2}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 895
    iget-boolean v3, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 897
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 898
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v3, v3

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 899
    .local v1, numChildren:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 900
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    .end local v0           #i:I
    .end local v1           #numChildren:I
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 873
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 874
    .local v3, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 876
    .local v2, ss:Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    iget-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    .line 878
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 879
    .local v1, numChildren:I
    :goto_0
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    .line 880
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 881
    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 878
    .end local v0           #i:I
    .end local v1           #numChildren:I
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v4

    goto :goto_0

    .line 884
    .restart local v0       #i:I
    .restart local v1       #numChildren:I
    :cond_1
    return-object v2
.end method

.method protected requestFocusForFirstEditField()V
    .locals 7

    .prologue
    .line 224
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v6, v6

    if-eqz v6, :cond_2

    .line 225
    const/4 v3, 0x0

    .line 226
    .local v3, firstField:Landroid/widget/EditText;
    const/4 v0, 0x0

    .line 227
    .local v0, anyFieldHasFocus:Z
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v1, arr$:[Landroid/widget/EditText;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 228
    .local v2, editText:Landroid/widget/EditText;
    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 229
    move-object v3, v2

    .line 231
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 232
    const/4 v0, 0x1

    .line 236
    .end local v2           #editText:Landroid/widget/EditText;
    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 237
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 240
    .end local v0           #anyFieldHasFocus:Z
    .end local v1           #arr$:[Landroid/widget/EditText;
    .end local v3           #firstField:Landroid/widget/EditText;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    return-void

    .line 227
    .restart local v0       #anyFieldHasFocus:Z
    .restart local v1       #arr$:[Landroid/widget/EditText;
    .restart local v2       #editText:Landroid/widget/EditText;
    .restart local v3       #firstField:Landroid/widget/EditText;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 163
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 164
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 165
    goto :goto_1

    .line 168
    .end local v0           #index:I
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 169
    return-void

    :cond_2
    move v2, v3

    .line 168
    goto :goto_2
.end method

.method public setExpansionViewEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 39
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 245
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 246
    const/16 v17, 0x0

    .line 248
    .local v17, hidePossible:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v13

    .line 249
    .local v13, fieldCount:I
    new-array v0, v13, [Landroid/widget/EditText;

    move-object/from16 v30, v0

    .line 251
    .local v30, tempFieldEditTexts:[Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v35

    if-eqz v35, :cond_18

    const-string v35, "vnd.sec.contact.sim"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v36

    const-string v37, "account_type"

    invoke-virtual/range {v36 .. v37}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_18

    .line 253
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    .line 258
    :goto_0
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    .line 259
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v35

    if-nez v35, :cond_0

    .line 260
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v35

    if-eqz v35, :cond_1

    const-string v35, "vnd.sec.contact.sim2"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v36

    const-string v37, "account_type"

    invoke-virtual/range {v36 .. v37}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 262
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    .line 267
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v35

    if-eqz v35, :cond_2

    .line 268
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v35

    const-string v36, "account_type"

    invoke-virtual/range {v35 .. v36}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 269
    .local v29, simAccountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v24

    .line 271
    .local v24, length:I
    const/16 v35, 0x14

    move/from16 v0, v24

    move/from16 v1, v35

    if-le v0, v1, :cond_2

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount(Ljava/lang/String;)I

    .line 278
    .end local v24           #length:I
    .end local v29           #simAccountType:Ljava/lang/String;
    :cond_2
    sget v32, Lcom/android/contacts/editor/TextFieldsEditorView;->MAX_LENGTH:I

    .line 279
    .local v32, tmpCscVal:I
    const/16 v35, -0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_3

    .line 280
    const/16 v32, 0x3e8

    .line 282
    :cond_3
    const/16 v20, 0x0

    .local v20, index:I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v13, :cond_37

    .line 283
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/AccountType$EditField;

    .line 286
    .local v12, field:Lcom/android/contacts/model/AccountType$EditField;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    .line 289
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v35

    const-string v36, "vnd.android.cursor.item/name"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "data1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_4

    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "data2"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_4

    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "data5"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_4

    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "data3"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    .line 291
    :cond_4
    new-instance v15, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, p2

    invoke-direct {v15, v0, v1, v12, v2}, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/content/Context;Lcom/android/contacts/model/AccountType$EditField;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 300
    .local v15, fieldView:Landroid/widget/EditText;
    :goto_2
    sget v35, Lcom/android/contacts/editor/TextFieldsEditorView;->MAX_LENGTH:I

    const/16 v36, 0xfa

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v35

    const-string v36, "vnd.android.cursor.item/website"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 301
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Landroid/text/InputFilter$LengthFilter;

    const/16 v38, 0x3e8

    invoke-direct/range {v37 .. v38}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v37, v35, v36

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 310
    :goto_3
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v35, -0x1

    const/16 v36, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 313
    .local v16, fieldViewParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    :cond_5
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v35

    if-eqz v35, :cond_8

    .line 314
    const/16 v24, 0x0

    .line 315
    .restart local v24       #length:I
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v35

    const-string v36, "account_type"

    invoke-virtual/range {v35 .. v36}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 316
    .restart local v29       #simAccountType:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "#displayName"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1c

    .line 317
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v35

    if-nez v35, :cond_6

    .line 318
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(Ljava/lang/String;)I

    move-result v24

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_7

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v35

    if-nez v35, :cond_7

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0c0013

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 386
    :cond_7
    :goto_4
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v5, v0, [Landroid/text/InputFilter;

    .line 387
    .local v5, FilterArray:[Landroid/text/InputFilter;
    const/16 v35, 0x0

    new-instance v36, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v36, v5, v35

    .line 388
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 390
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v35, -0x1

    const/16 v36, -0x2

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    .local v25, marginParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v35

    if-nez v35, :cond_22

    .line 393
    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0c0012

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v37

    const/16 v38, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 409
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    .end local v5           #FilterArray:[Landroid/text/InputFilter;
    .end local v24           #length:I
    .end local v25           #marginParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #simAccountType:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    iget v0, v12, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v35, v0

    if-eqz v35, :cond_24

    .line 473
    iget v0, v12, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMinLines(I)V

    .line 479
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/contacts/model/DataKind;->textAppearanceResourceId:I

    move/from16 v36, v0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 480
    const/16 v35, 0x10

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 481
    aput-object v15, v30, v20

    .line 482
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/view/View;->setId(I)V

    .line 483
    iget v0, v12, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v35, v0

    if-lez v35, :cond_9

    .line 484
    iget v0, v12, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 486
    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 488
    .local v10, currentLang:Ljava/lang/String;
    iget v0, v12, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    move/from16 v21, v0

    .line 489
    .local v21, inputType:I
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 491
    iget-object v8, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 492
    .local v8, column:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 494
    .local v33, value:Ljava/lang/String;
    const/16 v35, 0x3

    move/from16 v0, v21

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_a

    const-string v35, "iw"

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_a

    .line 498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    move/from16 v35, v0

    if-nez v35, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    move/from16 v35, v0

    if-nez v35, :cond_a

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v15}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 504
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    move/from16 v35, v0

    if-nez v35, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    move/from16 v35, v0

    if-eqz v35, :cond_c

    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "#displayName"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z

    move/from16 v35, v0

    if-eqz v35, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ONE:I

    move/from16 v35, v0

    :goto_7
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(I)I

    move-result v26

    .line 506
    .local v26, maxNameLength:I
    if-eqz v33, :cond_c

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v35

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    .line 508
    const/16 v35, 0x0

    :try_start_0
    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 509
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v8, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v26           #maxNameLength:I
    :cond_c
    :goto_8
    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    .line 521
    const-string v35, "#phoneticName"

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 522
    const/16 v35, 0x0

    aget-object v35, v30, v35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->getPhoneticName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    :cond_d
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setDeleteButtonVisible(Z)V

    .line 530
    new-instance v35, Lcom/android/contacts/editor/TextFieldsEditorView$2;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/contacts/editor/TextFieldsEditorView$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/widget/EditText;)V

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 542
    new-instance v35, Lcom/android/contacts/editor/TextFieldsEditorView$3;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v15, v2, v8}, Lcom/android/contacts/editor/TextFieldsEditorView$3;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/widget/EditText;Lcom/android/contacts/model/DataKind;Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 665
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v35

    if-eqz v35, :cond_13

    if-eqz p3, :cond_13

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v35

    if-eqz v35, :cond_13

    const-string v35, "vnd.sec.contact.sim"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v36

    const-string v37, "account_type"

    invoke-virtual/range {v36 .. v37}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_e

    const-string v35, "vnd.sec.contact.sim2"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v36

    const-string v37, "account_type"

    invoke-virtual/range {v36 .. v37}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 673
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "#displayName"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 674
    const/16 v24, 0x0

    .line 675
    .restart local v24       #length:I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v35

    if-nez v35, :cond_f

    .line 676
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v36

    const-string v37, "account_type"

    invoke-virtual/range {v36 .. v37}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(Ljava/lang/String;)I

    move-result v24

    .line 685
    move/from16 v27, v24

    .line 686
    .local v27, nameMaxLength:I
    move-object/from16 v28, v15

    .line 688
    .local v28, nameView:Landroid/widget/EditText;
    const-string v35, "vnd.sec.contact.sim"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v36

    const-string v37, "account_type"

    invoke-virtual/range {v36 .. v37}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_10

    const-string v35, "vnd.sec.contact.sim2"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v36

    const-string v37, "account_type"

    invoke-virtual/range {v36 .. v37}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 690
    :cond_10
    sput v27, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    .line 693
    :cond_11
    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;

    .line 696
    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v7, v0, [B

    .line 697
    .local v7, bytename_temp:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v7

    .line 698
    array-length v0, v7

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v27

    if-le v0, v1, :cond_12

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toCharArray()[C

    move-result-object v35

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 702
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toCharArray()[C

    move-result-object v38

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v37, v35, v36

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 708
    :cond_12
    new-instance v35, Lcom/android/contacts/editor/TextFieldsEditorView$4;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/contacts/editor/TextFieldsEditorView$4;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;ILandroid/widget/EditText;Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 743
    .end local v7           #bytename_temp:[B
    .end local v24           #length:I
    .end local v27           #nameMaxLength:I
    .end local v28           #nameView:Landroid/widget/EditText;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v35

    if-eqz v35, :cond_26

    if-nez p4, :cond_26

    const/16 v35, 0x1

    :goto_9
    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 745
    iget-boolean v0, v12, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    move/from16 v35, v0

    if-eqz v35, :cond_28

    .line 746
    const/16 v17, 0x1

    .line 747
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 748
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v35, v0

    if-eqz v35, :cond_27

    const/16 v35, 0x0

    :goto_a
    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 775
    :cond_14
    :goto_b
    iget v0, v12, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v35, v0

    const v36, 0x7f0d019a

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_15

    .line 776
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsPhoneticName:Z

    .line 779
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "#displayName"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_35

    .line 780
    const v35, 0x2000005

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 793
    :goto_c
    sget-object v35, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 795
    const-string v35, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_16

    const-string v35, "#displayName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_16

    const-string v35, "#phoneticName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_16

    const-string v35, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_17

    .line 799
    :cond_16
    invoke-virtual {v15}, Landroid/widget/TextView;->getInputType()I

    move-result v35

    const/high16 v36, 0x8

    or-int v35, v35, v36

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 803
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 282
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 255
    .end local v8           #column:Ljava/lang/String;
    .end local v10           #currentLang:Ljava/lang/String;
    .end local v12           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v15           #fieldView:Landroid/widget/EditText;
    .end local v16           #fieldViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v20           #index:I
    .end local v21           #inputType:I
    .end local v32           #tmpCscVal:I
    .end local v33           #value:Ljava/lang/String;
    :cond_18
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z

    goto/16 :goto_0

    .line 293
    .restart local v12       #field:Lcom/android/contacts/model/AccountType$EditField;
    .restart local v20       #index:I
    .restart local v32       #tmpCscVal:I
    :cond_19
    new-instance v15, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v15, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v15       #fieldView:Landroid/widget/EditText;
    goto/16 :goto_2

    .line 296
    .end local v15           #fieldView:Landroid/widget/EditText;
    :cond_1a
    new-instance v15, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v15, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v15       #fieldView:Landroid/widget/EditText;
    goto/16 :goto_2

    .line 305
    :cond_1b
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v37

    move/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v37, v35, v36

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_3

    .line 327
    .restart local v16       #fieldViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v24       #length:I
    .restart local v29       #simAccountType:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_20

    .line 328
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    .line 329
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v35

    if-nez v35, :cond_1d

    .line 330
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v24

    .line 331
    if-eqz p2, :cond_7

    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_7

    if-lez v24, :cond_7

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    .line 334
    .local v22, intentAction:Ljava/lang/String;
    const-string v35, "android.intent.action.EDIT"

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1e

    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v35

    move/from16 v1, v24

    if-le v0, v1, :cond_1e

    .line 336
    mul-int/lit8 v24, v24, 0x2

    .line 337
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    .line 340
    :cond_1e
    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "+"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1f

    .line 341
    add-int/lit8 v24, v24, 0x1

    .line 344
    :cond_1f
    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 345
    .local v31, tempOrgNum:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_7

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v35

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    .line 346
    const/16 v35, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v35

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 347
    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 378
    .end local v22           #intentAction:Ljava/lang/String;
    .end local v31           #tempOrgNum:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 379
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v35

    if-nez v35, :cond_21

    .line 380
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength(Ljava/lang/String;)I

    move-result v24

    goto/16 :goto_4

    .line 397
    .restart local v5       #FilterArray:[Landroid/text/InputFilter;
    .restart local v25       #marginParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_23

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0c0012

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    const/16 v36, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0c0012

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v37

    const/16 v38, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_5

    .line 403
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0c0011

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    const/16 v36, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0c0012

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v37

    const/16 v38, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_5

    .line 475
    .end local v5           #FilterArray:[Landroid/text/InputFilter;
    .end local v24           #length:I
    .end local v25           #marginParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #simAccountType:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_6

    .line 505
    .restart local v8       #column:Ljava/lang/String;
    .restart local v10       #currentLang:Ljava/lang/String;
    .restart local v21       #inputType:I
    .restart local v33       #value:Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->SIM_ZERO:I

    move/from16 v35, v0

    goto/16 :goto_7

    .line 510
    .restart local v26       #maxNameLength:I
    :catch_0
    move-exception v11

    .line 511
    .local v11, e:Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 743
    .end local v11           #e:Ljava/lang/StringIndexOutOfBoundsException;
    .end local v26           #maxNameLength:I
    :cond_26
    const/16 v35, 0x0

    goto/16 :goto_9

    .line 748
    :cond_27
    const/16 v35, 0x8

    goto/16 :goto_a

    .line 749
    :cond_28
    iget-boolean v0, v12, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2f

    .line 750
    const/16 v17, 0x1

    .line 751
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 753
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Contact_UseUniNameField"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2d

    .line 755
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "#displayName"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2b

    .line 756
    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "data3"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 757
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 761
    :goto_d
    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "data2"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 762
    const v35, 0x7f0d0194

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setHint(I)V

    goto/16 :goto_b

    .line 759
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2a

    const/16 v35, 0x8

    :goto_e
    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_2a
    const/16 v35, 0x0

    goto :goto_e

    .line 764
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2c

    const/16 v35, 0x8

    :goto_f
    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    :cond_2c
    const/16 v35, 0x0

    goto :goto_f

    .line 766
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2e

    const/16 v35, 0x8

    :goto_10
    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    :cond_2e
    const/16 v35, 0x0

    goto :goto_10

    .line 769
    :cond_2f
    invoke-static/range {v33 .. v33}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_31

    iget-boolean v0, v12, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    move/from16 v35, v0

    if-eqz v35, :cond_31

    const/4 v9, 0x1

    .line 770
    .local v9, couldHide:Z
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v35, v0

    if-eqz v35, :cond_32

    if-eqz v9, :cond_32

    const/16 v34, 0x1

    .line 771
    .local v34, willHide:Z
    :goto_12
    if-eqz v34, :cond_33

    const/16 v35, 0x8

    :goto_13
    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 772
    if-nez v17, :cond_30

    if-eqz v9, :cond_34

    :cond_30
    const/16 v17, 0x1

    :goto_14
    goto/16 :goto_b

    .line 769
    .end local v9           #couldHide:Z
    .end local v34           #willHide:Z
    :cond_31
    const/4 v9, 0x0

    goto :goto_11

    .line 770
    .restart local v9       #couldHide:Z
    :cond_32
    const/16 v34, 0x0

    goto :goto_12

    .line 771
    .restart local v34       #willHide:Z
    :cond_33
    const/16 v35, 0x0

    goto :goto_13

    .line 772
    :cond_34
    const/16 v17, 0x0

    goto :goto_14

    .line 781
    .end local v9           #couldHide:Z
    .end local v34           #willHide:Z
    :cond_35
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Contact_UseSeparateAddressField"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_36

    iget-object v0, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "data9"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_36

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_36

    .line 786
    const-string v35, "defaultInputmode=numeric;"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 787
    const/high16 v35, 0x200

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_c

    .line 790
    :cond_36
    const/high16 v35, 0x200

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_c

    .line 806
    .end local v8           #column:Ljava/lang/String;
    .end local v10           #currentLang:Ljava/lang/String;
    .end local v12           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v15           #fieldView:Landroid/widget/EditText;
    .end local v16           #fieldViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v21           #inputType:I
    .end local v33           #value:Ljava/lang/String;
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v35, v0

    if-eqz v35, :cond_38

    .line 807
    const/16 v18, 0x0

    .line 808
    .local v18, i:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v6, arr$:[Landroid/widget/EditText;
    array-length v0, v6

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_15
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_38

    aget-object v14, v6, v19

    .line 809
    .local v14, fieldEditText:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 808
    add-int/lit8 v19, v19, 0x1

    goto :goto_15

    .line 812
    .end local v6           #arr$:[Landroid/widget/EditText;
    .end local v14           #fieldEditText:Landroid/widget/EditText;
    .end local v18           #i:I
    .end local v19           #i$:I
    .end local v23           #len$:I
    :cond_38
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 815
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupExpansionView(ZZ)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    move-object/from16 v36, v0

    if-nez p4, :cond_39

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v35

    if-eqz v35, :cond_39

    const/16 v35, 0x1

    :goto_16
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 817
    return-void

    .line 816
    :cond_39
    const/16 v35, 0x0

    goto :goto_16
.end method
