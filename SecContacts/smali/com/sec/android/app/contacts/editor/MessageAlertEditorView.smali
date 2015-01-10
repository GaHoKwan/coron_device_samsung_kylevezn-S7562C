.class public Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;
.super Landroid/widget/LinearLayout;
.source "MessageAlertEditorView.java"


# instance fields
.field private kindTitle:Landroid/widget/TextView;

.field private mAlerttoneList:Landroid/widget/TextView;

.field private mAlerttoneValue:Ljava/lang/String;

.field private mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mKind:Lcom/android/contacts/model/DataKind;

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method private updateView()V
    .locals 5

    .prologue
    const v4, 0x7f0d0277

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneList:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 83
    const v2, 0x7f09028f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneList:Landroid/widget/TextView;

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneList:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneValue:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    .local v1, alerttoneUri:Landroid/net/Uri;
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 92
    .local v0, alerttone:Landroid/media/Ringtone;
    if-eqz v0, :cond_1

    .line 93
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneValue:Ljava/lang/String;

    .line 101
    .end local v0           #alerttone:Landroid/media/Ringtone;
    .end local v1           #alerttoneUri:Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneList:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void

    .line 95
    .restart local v0       #alerttone:Landroid/media/Ringtone;
    .restart local v1       #alerttoneUri:Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneValue:Ljava/lang/String;

    goto :goto_0

    .line 98
    .end local v0           #alerttone:Landroid/media/Ringtone;
    .end local v1           #alerttoneUri:Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneValue:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public setAlerttone(Ljava/lang/String;)V
    .locals 2
    .parameter "alerttone"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneValue:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v1, "sec_custom_alert"

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->updateView()V

    .line 79
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneList:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3
    .parameter "kind"
    .parameter "values"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mKind:Lcom/android/contacts/model/DataKind;

    .line 107
    iput-object p3, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 109
    iput-object p2, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 110
    iput-object p5, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 111
    const v0, 0x7f090252

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->kindTitle:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->kindTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/4 v0, -0x1

    invoke-virtual {p5, p3, p1, p2, v0}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 116
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "sec_custom_alert"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneValue:Ljava/lang/String;

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->updateView()V

    .line 122
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->mAlerttoneValue:Ljava/lang/String;

    goto :goto_0
.end method
