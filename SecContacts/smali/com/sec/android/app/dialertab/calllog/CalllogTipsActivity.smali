.class public Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "CalllogTipsActivity.java"


# instance fields
.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 2
    .parameter "createContentView"
    .parameter "savedState"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    const v1, 0x7f040024

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->setContentView(I)V

    .line 50
    const v1, 0x7f0900e4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 51
    const v1, 0x7f0900e5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, okButton:Landroid/view/View;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .end local v0           #okButton:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static neverShowCalllogTipsAgain(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showCalllogTips"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 45
    return-void
.end method
