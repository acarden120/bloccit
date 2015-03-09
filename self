[1m[1;34mActiveRecord::Persistence#methods[0m[0m: 
  becomes     delete      increment!   toggle!           update_attributes 
  becomes!    destroy!    new_record?  update            update_attributes!
  decrement   destroyed?  persisted?   update!           update_column     
  decrement!  increment   toggle       update_attribute  update_columns    
[1m[1;34mActiveRecord::ReadonlyAttributes#methods[0m[0m: _attr_readonly
[1m[1;34mActiveRecord::Scoping#methods[0m[0m: populate_with_current_scope_attributes
[1m[1;34mActiveRecord::Sanitization#methods[0m[0m: quoted_id
[1m[1;34mActiveRecord::AttributeAssignment#methods[0m[0m: assign_attributes  attributes=
[1m[1;34mActiveModel::Conversion#methods[0m[0m: to_model  to_partial_path
[1m[1;34mActiveRecord::Integration#methods[0m[0m: cache_key  to_param
[1m[1;34mActiveModel::Validations#methods[0m[0m: 
  errors  invalid?  read_attribute_for_validation  validates_with
[1m[1;34mActiveSupport::Callbacks#methods[0m[0m: run_callbacks
[1m[1;34mActiveModel::Validations::HelperMethods#methods[0m[0m: 
  validates_absence_of       validates_format_of        validates_presence_of
  validates_acceptance_of    validates_inclusion_of     validates_size_of    
  validates_confirmation_of  validates_length_of      
  validates_exclusion_of     validates_numericality_of
[1m[1;34mActiveRecord::Validations#methods[0m[0m: valid?
[1m[1;34mActiveRecord::Locking::Optimistic#methods[0m[0m: locking_enabled?
[1m[1;34mActiveRecord::Locking::Pessimistic#methods[0m[0m: lock!  with_lock
[1m[1;34mActiveModel::AttributeMethods#methods[0m[0m: respond_to_without_attributes?
[1m[1;34mActiveRecord::AttributeMethods#methods[0m[0m: 
  []                     attribute_names       has_attribute?
  []=                    attribute_present?    [1;31mmethod_missing[0m
  attribute_for_inspect  attributes            respond_to?   
  attribute_missing      column_for_attribute
[1m[1;34mActiveRecord::AttributeMethods::Read#methods[0m[0m: read_attribute
[1m[1;34mActiveRecord::AttributeMethods::Write#methods[0m[0m: raw_write_attribute
[1m[1;34mActiveRecord::AttributeMethods::BeforeTypeCast#methods[0m[0m: 
  attributes_before_type_cast  read_attribute_before_type_cast
[1m[1;34mActiveRecord::AttributeMethods::Query#methods[0m[0m: query_attribute
[1m[1;34mActiveRecord::AttributeMethods::PrimaryKey#methods[0m[0m: to_key
[1m[1;34mActiveModel::Dirty#methods[0m[0m: 
  changed  changed?  changed_attributes  changes  previous_changes
[1m[1;34mActiveRecord::AttributeMethods::Serialization#methods[0m[0m: serialized_attributes
[1m[1;34mActiveRecord::Callbacks#methods[0m[0m: touch
[1m[1;34mActiveRecord::Associations#methods[0m[0m: 
  association  association_cache  clear_association_cache
[1m[1;34mActiveRecord::AutosaveAssociation#methods[0m[0m: 
  changed_for_autosave?     destroyed_by_association=  marked_for_destruction?
  destroyed_by_association  mark_for_destruction       reload                 
[1m[1;34mActiveRecord::NestedAttributes#methods[0m[0m: _destroy
[1m[1;34mActiveRecord::Aggregations#methods[0m[0m: clear_aggregation_cache
[1m[1;34mActiveRecord::Transactions#methods[0m[0m: 
  add_to_transaction             save                             
  committed!                     save!                            
  destroy                        transaction                      
  rollback_active_record_state!  with_transaction_returning_status
  rolledback!                  
[1m[1;34mActiveModel::Serialization#methods[0m[0m: read_attribute_for_serialization
[1m[1;34mActiveModel::Serializers::JSON#methods[0m[0m: as_json  from_json
[1m[1;34mActiveModel::Serializers::Xml#methods[0m[0m: from_xml
[1m[1;34mActiveRecord::Serialization#methods[0m[0m: serializable_hash  to_xml
[1m[1;34mActiveRecord::Core#methods[0m[0m: 
  <=>                 freeze                        inspect              
  ==                  frozen?                       readonly!            
  connection          has_transactional_callbacks?  readonly?            
  connection_handler  hash                          set_transaction_state
  encode_with         init_with                     slice                
  eql?                initialize_dup              
[1m[1;34mActiveRecord::Base#methods[0m[0m: 
  _commit_callbacks                  attribute_types_cached_by_default?       
  _commit_callbacks=                 cache_timestamp_format                   
  _commit_callbacks?                 cache_timestamp_format?                  
  _create_callbacks                  configurations                           
  _create_callbacks=                 default_connection_handler               
  _create_callbacks?                 default_connection_handler?              
  _destroy_callbacks                 default_scopes                           
  _destroy_callbacks=                default_timezone                         
  _destroy_callbacks?                disable_implicit_join_references         
  _find_callbacks                    include_root_in_json                     
  _find_callbacks=                   include_root_in_json=                    
  _find_callbacks?                   include_root_in_json?                    
  _initialize_callbacks              lock_optimistically                      
  _initialize_callbacks=             lock_optimistically?                     
  _initialize_callbacks?             logger                                   
  _rollback_callbacks                nested_attributes_options                
  _rollback_callbacks=               nested_attributes_options?               
  _rollback_callbacks?               partial_writes                           
  _save_callbacks                    partial_writes?                          
  _save_callbacks=                   pluralize_table_names                    
  _save_callbacks?                   pluralize_table_names?                   
  _touch_callbacks                   primary_key_prefix_type                  
  _touch_callbacks=                  record_timestamps                        
  _touch_callbacks?                  record_timestamps=                       
  _update_callbacks                  record_timestamps?                       
  _update_callbacks=                 reflections                              
  _update_callbacks?                 reflections=                             
  _validate_callbacks                reflections?                             
  _validate_callbacks=               schema_format                            
  _validate_callbacks?               skip_time_zone_conversion_for_attributes 
  _validation_callbacks              skip_time_zone_conversion_for_attributes?
  _validation_callbacks=             store_full_sti_class                     
  _validation_callbacks?             store_full_sti_class?                    
  _validators                        table_name_prefix                        
  _validators=                       table_name_prefix?                       
  _validators?                       table_name_suffix                        
  attribute_aliases                  table_name_suffix?                       
  attribute_aliases?                 time_zone_aware_attributes               
  attribute_method_matchers          timestamped_migrations                   
  attribute_method_matchers?         validation_context                       
  attribute_types_cached_by_default  validation_context=                      
[1m[1;34m#<Module:0x000000035222b0>#methods[0m[0m: 
  body                         id_will_change!            
  body=                        reset_body!                
  body?                        reset_created_at!          
  body_before_type_cast        reset_id!                  
  body_change                  reset_title!               
  body_changed?                reset_updated_at!          
  body_was                     title                      
  body_will_change!            title=                     
  created_at                   title?                