import Route from 'ember-route-template';
import { HeadlessForm } from 'ember-headless-form';
export default Route(
  <template>
    <HeadlessForm as |form|>
      {{#if form.submissionState.isPending}}{{else}}
        <form.Field @name="email" as |field|>
          <field.Label class="form-label" />
          <field.Input required type="email" />
          <field.Errors class="text-danger" />
        </form.Field>
      {{/if}}
    </HeadlessForm>
    {{outlet}}
  </template>,
);
