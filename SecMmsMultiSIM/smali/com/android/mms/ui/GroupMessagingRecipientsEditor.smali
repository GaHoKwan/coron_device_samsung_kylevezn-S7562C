.class public Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
.super Landroid/widget/AutoCompleteTextView;
.source "GroupMessagingRecipientsEditor.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final IME_ACTION_LONGPRESS:Ljava/lang/String; = "imeAction:longPress"

.field public static final IME_ACTION_SELECT_RECIPIENT:Ljava/lang/String; = "imeAction:selectRecipient"

.field private static final TAG:Ljava/lang/String; = "Mms/compose"


# instance fields
.field private mGroupList:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

.field private mRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_PICListener:Lcom/android/mms/ui/OnPrivateIMECommandListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->m_PICListener:Lcom/android/mms/ui/OnPrivateIMECommandListener;

    .line 69
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 81
    new-instance v0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor$1;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientsEditor;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    new-instance v0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor$2;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientsEditor;)V

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/GroupMessagingRecipientsEditor;)Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mGroupList:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    return-object v0
.end method

.method public static contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "c"

    .prologue
    .line 228
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    .local v1, s:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 232
    .local v0, len:I
    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-object v1

    .line 236
    :cond_0
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "number"

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method public constructContactsFromInput()Lcom/android/mms/data/ContactList;
    .locals 7

    .prologue
    .line 134
    const-string v4, "Mms/compose"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "constructContactsFromInput numbers= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 137
    .local v2, list:Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 145
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 146
    invoke-virtual {v0, v3}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 151
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 155
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public constructContactsFromValidRecipients(Z)Lcom/android/mms/data/ContactList;
    .locals 5
    .parameter "isMms"

    .prologue
    .line 159
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 161
    .local v2, list:Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    invoke-static {v3, p1}, Lcom/android/mms/ui/MessageUtils;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 169
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0, v3}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public containsAlias()Z
    .locals 3

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const/4 v2, 0x1

    .line 223
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsEmail()Z
    .locals 3

    .prologue
    .line 211
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    const/4 v2, 0x1

    .line 215
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public formatInvalidNumbers(Z)Ljava/lang/String;
    .locals 4
    .parameter "isMms"

    .prologue
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    .local v1, number:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/mms/ui/MessageUtils;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 207
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    return-object v0
.end method

.method public getRecipientCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasInvalidRecipient(Z)Z
    .locals 4
    .parameter "isMms"

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-object v3, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    .local v1, number:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/mms/ui/MessageUtils;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 194
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    .line 189
    .restart local v1       #number:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 194
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient(Z)Z
    .locals 3
    .parameter "isMms"

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, number:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/mms/ui/MessageUtils;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const/4 v2, 0x1

    .line 181
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public moveCursorToEnd()V
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 274
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onFilterComplete(I)V

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 330
    return-void
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->m_PICListener:Lcom/android/mms/ui/OnPrivateIMECommandListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->m_PICListener:Lcom/android/mms/ui/OnPrivateIMECommandListener;

    invoke-interface {v0, p1, p2}, Lcom/android/mms/ui/OnPrivateIMECommandListener;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 343
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public populate(Lcom/android/mms/data/ContactList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 243
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 245
    .local v2, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 246
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const-string v3, ", "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 249
    :cond_0
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 252
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 253
    const-string v3, ", "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 254
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 258
    :cond_2
    return-void
.end method

.method public setComposer(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V
    .locals 0
    .parameter "GroupMessagingList"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mGroupList:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    .line 122
    return-void
.end method

.method public setOnPrivateIMECommandListener(Lcom/android/mms/ui/OnPrivateIMECommandListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->m_PICListener:Lcom/android/mms/ui/OnPrivateIMECommandListener;

    .line 335
    return-void
.end method

.method public setRecipients([Ljava/lang/String;)V
    .locals 5
    .parameter "recipients"

    .prologue
    .line 261
    iget-object v4, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 263
    if-nez p1, :cond_1

    .line 270
    :cond_0
    return-void

    .line 266
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 267
    .local v3, recipient:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    iget-object v4, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRecipientsInEditor()V
    .locals 18

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    .line 278
    .local v8, recipientcount:I
    const/4 v3, 0x0

    .line 280
    .local v3, name:Ljava/lang/String;
    if-lez v8, :cond_5

    .line 282
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaxRecipient()I

    move-result v12

    const/16 v13, 0x64

    if-ge v12, v13, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v12

    const/16 v13, 0x64

    if-lt v12, v13, :cond_1

    .line 283
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/mms/data/Contact;->getContactNameForToButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    :goto_0
    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    .line 288
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_1
    return-void

    .line 285
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mRecipients:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 296
    .local v6, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0005

    add-int/lit8 v14, v8, -0x1

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v17, v8, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, recipientStr:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v11, v12

    .line 299
    .local v11, strWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v13

    sub-int v1, v12, v13

    .line 300
    .local v1, editorWidth:I
    const-string v12, "Mms/compose"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "strWidth:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", editorWidth:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    if-ge v1, v11, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0005

    add-int/lit8 v14, v8, -0x1

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "..."

    aput-object v17, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v17, v8, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, etcStr:Ljava/lang/String;
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    sub-int v9, v1, v12

    .line 306
    .local v9, remainWidth:I
    const/4 v10, 0x0

    .line 307
    .local v10, strIdx:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 308
    .local v4, nameLen:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v5, newName:Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    if-le v9, v12, :cond_3

    if-ge v10, v4, :cond_3

    .line 311
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 315
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 319
    .end local v2           #etcStr:Ljava/lang/String;
    .end local v4           #nameLen:I
    .end local v5           #newName:Ljava/lang/StringBuffer;
    .end local v9           #remainWidth:I
    .end local v10           #strIdx:I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 323
    .end local v1           #editorWidth:I
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #recipientStr:Ljava/lang/String;
    .end local v11           #strWidth:I
    :cond_5
    const-string v12, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
